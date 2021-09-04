const std = @import("std");
const HashMap = std.HashMap;
const StringContext = std.hash_map.StringContext;
const Allocator = std.mem.Allocator;
const span = std.mem.span;
usingnamespace @import("wren.zig");

/// non optional version of WrenForeignMethodFn
pub const WrenMethod = @typeInfo(WrenForeignMethodFn).Optional.child;

fn write(
    comptime format: []const u8,
    args: anytype,
) void {
    const stdout = std.io.getStdOut();
    std.fmt.format(stdout.writer(), format, args) catch {
        std.log.err("Failed to write: " ++ format, args);
    };
}

fn writeFn(vm: ?*WrenVM, text: [*c]const u8) callconv(.C) void {
    write("{s}", .{text});
}

fn errorFn(vm: ?*WrenVM, errorType: WrenErrorType, module: [*c]const u8, line: c_int, msg: [*c]const u8) callconv(.C) void {
    switch (errorType) {
        .WREN_ERROR_COMPILE => {
            write("[{s} line {}] [Error] {s}\n", .{ module, line, msg });
        },
        .WREN_ERROR_STACK_TRACE => {
            write("[{s} line {}] in {s}\n", .{ module, line, msg });
        },
        .WREN_ERROR_RUNTIME => {
            write("[Runtime Error] {s}\n", .{msg});
        },
        else => {},
    }
}

pub fn abort(vm: ?*WrenVM, msg: []const u8) void {
    wrenSetSlotString(vm, 0, msg.ptr);
    wrenAbortFiber(vm, 0);
}

fn getHelperFromVM(
    vm: ?*WrenVM,
) !*WrenHelper {
    if (wrenGetUserData(vm)) |userData| {
        return getHelperFromUserData(userData);
    } else {
        return error.NoWrenHelper;
    }
}

fn getHelperFromUserData(userData: *c_void) !*WrenHelper {
    const alignment = @alignOf(*WrenHelper);
    if (!std.mem.isAligned(@ptrToInt(userData), alignment)) {
        return error.InvalidMemoryAlignment;
    }
    return @ptrCast(*WrenHelper, @alignCast(alignment, userData));
}

fn loadModuleFromFileFn(
    vm: ?*WrenVM,
    module: [*c]const u8,
) callconv(.C) WrenLoadModuleResult {
    const helper = getHelperFromVM(vm) catch unreachable;
    var result = WrenLoadModuleResult{
        .source = null,
        .onComplete = loadModuleFromFileCompleteFn,
        .userData = null,
    };
    const allocator = helper.allocator;
    const source = std.fs.cwd().readFileAlloc(allocator, span(module), helper.moduleSizeLimit) catch return result;
    result.source = source.ptr;
    result.userData = @intToPtr(?*c_void, source.len);
    return result;
}

fn loadModuleFromFileCompleteFn(vm: ?*WrenVM, module: [*c]const u8, result: WrenLoadModuleResult) callconv(.C) void {
    const helper = getHelperFromVM(vm) catch unreachable;
    if (result.source) |ptr| {
        const source = ptr[0..@ptrToInt(result.userData)];
        helper.allocator.free(source);
    }
}

fn bindForeignMethodFn(
    vm: ?*WrenVM,
    module: [*c]const u8,
    className: [*c]const u8,
    isStatic: bool,
    signature: [*c]const u8,
) callconv(.C) ?WrenMethod {
    const helper = getHelperFromVM(vm) catch unreachable;
    return helper.getMethod(span(module), span(className), isStatic, span(signature)) catch |err| {
        abort(vm, @errorName(err));
        return null;
    };
}

pub fn noop(vm: ?*WrenVM) callconv(.C) void {}

fn bindForeignClassFn(
    vm: ?*WrenVM,
    module: [*c]const u8,
    className: [*c]const u8,
) callconv(.C) WrenForeignClassMethods {
    const helper = getHelperFromVM(vm) catch unreachable;
    return helper.getClass(span(module), span(className)) catch |err| {
        abort(vm, @errorName(err));
        return noClass;
    } orelse noClass;
}

fn reallocateFn(maybeMemory: ?*c_void, newSize: usize, userData: ?*c_void) callconv(.C) ?*c_void {
    const helper = getHelperFromUserData(userData.?) catch unreachable;
    const allocator = helper.allocator;
    const new = blk: {
        if (maybeMemory) |memory| {
            const metaPtrStart = @intToPtr([*]u8, @ptrToInt(memory) - @sizeOf(usize));
            const oldSize: usize = @ptrCast(*usize, @alignCast(@alignOf(usize), metaPtrStart)).*;
            const old = metaPtrStart[0 .. oldSize + @sizeOf(usize)];
            if (newSize == 0) {
                allocator.free(old);
                return null;
            } else {
                break :blk allocator.reallocAdvanced(old, @alignOf(usize), newSize + @sizeOf(usize), .exact) catch return null;
            }
        } else {
            break :blk allocator.allocAdvanced(u8, @alignOf(usize), newSize + @sizeOf(usize), .exact) catch return null;
        }
    };
    const newSize_ = @ptrCast(*usize, new);
    newSize_.* = newSize;
    return @intToPtr(*c_void, @ptrToInt(new.ptr) + @sizeOf(usize));
}

const noClass = WrenForeignClassMethods{
    .allocate = noop,
    .finalize = null,
};

pub const WrenHelper = struct {
    allocator: *Allocator,
    moduleSizeLimit: usize, // limit of how large a module source code can be in bytes
    vm: *WrenVM,
    methods: HashMap([]const u8, WrenMethod, StringContext, 80),
    classes: HashMap([]const u8, WrenForeignClassMethods, StringContext, 80),

    const Self = @This();

    pub fn init(self: *Self, allocator: *Allocator) !void {
        self.moduleSizeLimit = 1 << 16; // 1MB
        self.allocator = allocator;
        self.methods = @TypeOf(self.methods).init(allocator);
        self.classes = @TypeOf(self.classes).init(allocator);
        var config: WrenConfiguration = undefined;
        wrenInitConfiguration(&config);
        config.writeFn = writeFn;
        config.errorFn = errorFn;
        config.loadModuleFn = loadModuleFromFileFn;
        config.bindForeignMethodFn = bindForeignMethodFn;
        config.bindForeignClassFn = bindForeignClassFn;
        config.reallocateFn = reallocateFn;
        config.userData = self;
        self.vm = wrenNewVM(&config) orelse return error.NoWrenVM;
    }

    pub fn deinit(self: *Self) void {
        defer self.methods.deinit();
        defer self.classes.deinit();
        defer wrenFreeVM(self.vm);
    }

    pub fn setMethod(
        self: *Self,
        module: []const u8,
        className: []const u8,
        isStatic: bool,
        signature: []const u8,
        maybeMethod: ?WrenMethod,
    ) !?WrenMethod {
        const encodedMethodName = try encodeMethod(self.allocator, module, className, isStatic, signature);
        return hashMapSet(WrenMethod, self.allocator, &self.methods, encodedMethodName, maybeMethod);
    }

    pub fn getMethod(
        self: *Self,
        module: []const u8,
        className: []const u8,
        isStatic: bool,
        signature: []const u8,
    ) !?WrenMethod {
        const encodedMethodName = try encodeMethod(self.allocator, module, className, isStatic, signature);
        defer self.allocator.free(encodedMethodName);
        return self.methods.get(encodedMethodName);
    }

    pub fn setClass(
        self: *Self,
        module: []const u8,
        className: []const u8,
        maybeClass: ?WrenForeignClassMethods,
    ) !bool {
        const encodedClassName = try self.encodeClass(module, className);
        return hashMapSet(WrenForeignClassMethods, self.allocator, &self.classes, encodedClassName, maybeClass);
    }

    pub fn getClass(
        self: *Self,
        module: []const u8,
        className: []const u8,
    ) !?WrenForeignClassMethods {
        const encodedClassName = try encodeClass(self.allocator, module, className);
        defer self.allocator.free(encodedClassName);
        return self.classes.get(encodedClassName);
    }
};

fn encodeMethod(
    allocator: *Allocator,
    module: []const u8,
    className: []const u8,
    isStatic: bool,
    signature: []const u8,
) ![]const u8 {
    const callDelimiter: u8 = if (isStatic) '.' else '#';
    return std.fmt.allocPrint(allocator, "{s} {s}{c}{s}", .{ module, className, callDelimiter, signature });
}

fn encodeClass(
    allocator: *Allocator,
    module: []const u8,
    className: []const u8,
) ![]const u8 {
    return std.fmt.allocPrint(allocator, "{s} {s}", .{ module, className });
}

fn hashMapSet(
    comptime V: type,
    allocator: *Allocator,
    dict: anytype,
    key: []const u8,
    maybeValue: ?V,
) !?V {
    const kv = kv: {
        if (maybeValue) |value| {
            break :kv try dict.fetchPut(key, value);
        } else {
            defer allocator.free(key);
            break :kv dict.fetchRemove(key);
        }
    };
    return if (kv) |_kv| {
        defer allocator.free(_kv.key);
        return _kv.value;
    } else null;
}

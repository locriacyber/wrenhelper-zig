const std = @import("std");
const wrenHelper = @import("wrenhelper");
usingnamespace @import("wren");

const stdout = std.io.getStdOut();

fn ho(
    vm: ?*WrenVM
) callconv(.C) void {
    stdout.writeAll("Ho from zig\n") catch return wrenHelper.abort(vm, "Can't write to stdout");
    wrenSetSlotNull(vm, 0);
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = &gpa.allocator;
    var helper: wrenHelper.WrenHelper = undefined;
    try helper.init(allocator);
    _ = try helper.setMethod("main", "Hello", true, "ho()", ho);
    const result = wrenInterpret(helper.vm, "main",
        \\class Hello {
        \\    static hi() {
        \\        System.print("hi from wren")
        \\    }
        \\
        \\    foreign static ho()
        \\}
        \\
        \\Hello.hi()
        \\Hello.ho()
    );
}

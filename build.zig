const std = @import("std");
const path = std.fs.path;

const BuildError = error{
    NoWrenLibPath,
    NoEntryPoint,
};

pub fn baseNameWithoutExtension(p: []const u8) []const u8 {
    const filename = path.basename(p);
    const index = std.mem.lastIndexOfScalar(u8, filename, '.') orelse return filename;
    if (index == 0) return filename;
    return filename[0..index];
}

pub fn build(b: *std.build.Builder) !void {
    const wren_dir = b.env_map.get("WREN_LIB") orelse return BuildError.NoWrenLibPath;
    const entryFile = b.env_map.get("MAIN") orelse return BuildError.NoEntryPoint;
    const exeName = baseNameWithoutExtension(entryFile);

    std.log.info("Compiling {s} from {s}", .{ exeName, entryFile });

    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    const exe = b.addExecutable(exeName, entryFile);
    exe.setTarget(target);
    exe.setBuildMode(mode);

    exe.linkLibC();
    exe.addLibPath(try path.join(b.allocator, &.{ wren_dir, "lib" }));
    exe.linkSystemLibrary("wren");

    exe.addPackagePath("wren", "src/wren.zig");
    exe.addPackagePath("wrenhelper", "src/wrenhelper.zig");

    exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}

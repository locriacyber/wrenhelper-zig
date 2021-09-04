const std = @import("std");
const wrenHelper = @import("wrenhelper");
usingnamespace @import("wren");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = &gpa.allocator;
    var helper: wrenHelper.WrenHelper = undefined;
    try helper.init(allocator);
    const result = wrenInterpret(helper.vm, "main",
        \\import "examples/hello.wren" for Hello
        \\Hello.hi()
    );
}

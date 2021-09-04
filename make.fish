#!/usr/bin/fish

set -x -l WREN_LIB ~/wren

function run_all_examples
    for example in examples/*.zig
        set -x -l MAIN $example
        zig build run
    end
end

run_all_examples

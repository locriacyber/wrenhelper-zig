usingnamespace @import("std").c.builtins;
const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*c_void,
    reg_save_area: ?*c_void,
};
const __builtin_va_list = [1]struct___va_list_tag;
const va_list = __builtin_va_list;
const __gnuc_va_list = __builtin_va_list;
const wchar_t = c_int;
const _Float32 = f32;
const _Float64 = f64;
const _Float32x = f64;
const _Float64x = c_longdouble;
const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
extern fn __ctype_get_mb_cur_max() usize;
fn atof(arg___nptr: [*c]const u8) callconv(.C) f64 {
    var __nptr = arg___nptr;
    return strtod(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*c_void, @as(c_int, 0)))));
}
fn atoi(arg___nptr: [*c]const u8) callconv(.C) c_int {
    var __nptr = arg___nptr;
    return @bitCast(c_int, @truncate(c_int, strtol(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*c_void, @as(c_int, 0)))), @as(c_int, 10))));
}
fn atol(arg___nptr: [*c]const u8) callconv(.C) c_long {
    var __nptr = arg___nptr;
    return strtol(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*c_void, @as(c_int, 0)))), @as(c_int, 10));
}
fn atoll(arg___nptr: [*c]const u8) callconv(.C) c_longlong {
    var __nptr = arg___nptr;
    return strtoll(__nptr, @ptrCast([*c][*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), @intToPtr(?*c_void, @as(c_int, 0)))), @as(c_int, 10));
}
extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
extern fn l64a(__n: c_long) [*c]u8;
extern fn a64l(__s: [*c]const u8) c_long;
const __u_char = u8;
const __u_short = c_ushort;
const __u_int = c_uint;
const __u_long = c_ulong;
const __int8_t = i8;
const __uint8_t = u8;
const __int16_t = c_short;
const __uint16_t = c_ushort;
const __int32_t = c_int;
const __uint32_t = c_uint;
const __int64_t = c_long;
const __uint64_t = c_ulong;
const __int_least8_t = __int8_t;
const __uint_least8_t = __uint8_t;
const __int_least16_t = __int16_t;
const __uint_least16_t = __uint16_t;
const __int_least32_t = __int32_t;
const __uint_least32_t = __uint32_t;
const __int_least64_t = __int64_t;
const __uint_least64_t = __uint64_t;
const __quad_t = c_long;
const __u_quad_t = c_ulong;
const __intmax_t = c_long;
const __uintmax_t = c_ulong;
const __dev_t = c_ulong;
const __uid_t = c_uint;
const __gid_t = c_uint;
const __ino_t = c_ulong;
const __ino64_t = c_ulong;
const __mode_t = c_uint;
const __nlink_t = c_ulong;
const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;
const __fsid_t = extern struct {
    __val: [2]c_int,
};
const __clock_t = c_long;
const __rlim_t = c_ulong;
const __rlim64_t = c_ulong;
const __id_t = c_uint;
const __time_t = c_long;
const __useconds_t = c_uint;
const __suseconds_t = c_long;
const __suseconds64_t = c_long;
const __daddr_t = c_int;
const __key_t = c_int;
const __clockid_t = c_int;
const __timer_t = ?*c_void;
const __blksize_t = c_long;
const __blkcnt_t = c_long;
const __blkcnt64_t = c_long;
const __fsblkcnt_t = c_ulong;
const __fsblkcnt64_t = c_ulong;
const __fsfilcnt_t = c_ulong;
const __fsfilcnt64_t = c_ulong;
const __fsword_t = c_long;
const __ssize_t = c_long;
const __syscall_slong_t = c_long;
const __syscall_ulong_t = c_ulong;
const __loff_t = __off64_t;
const __caddr_t = [*c]u8;
const __intptr_t = c_long;
const __socklen_t = c_uint;
const __sig_atomic_t = c_int;
const u_char = __u_char;
const u_short = __u_short;
const u_int = __u_int;
const u_long = __u_long;
const quad_t = __quad_t;
const u_quad_t = __u_quad_t;
const fsid_t = __fsid_t;
const loff_t = __loff_t;
const ino_t = __ino_t;
const dev_t = __dev_t;
const gid_t = __gid_t;
const mode_t = __mode_t;
const nlink_t = __nlink_t;
const uid_t = __uid_t;
const off_t = __off_t;
const pid_t = __pid_t;
const id_t = __id_t;
const daddr_t = __daddr_t;
const caddr_t = __caddr_t;
const key_t = __key_t;
const clock_t = __clock_t;
const clockid_t = __clockid_t;
const time_t = __time_t;
const timer_t = __timer_t;
const ulong = c_ulong;
const ushort = c_ushort;
const uint = c_uint;
const u_int8_t = __uint8_t;
const u_int16_t = __uint16_t;
const u_int32_t = __uint32_t;
const u_int64_t = __uint64_t;
const register_t = c_long;
fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    return @bitCast(__uint16_t, @truncate(c_short, ((@bitCast(c_int, @as(c_uint, __bsx)) >> @intCast(@import("std").math.Log2Int(c_int), 8)) & @as(c_int, 255)) | ((@bitCast(c_int, @as(c_uint, __bsx)) & @as(c_int, 255)) << @intCast(@import("std").math.Log2Int(c_int), 8))));
}
fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(@import("std").math.Log2Int(c_uint), 24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(@import("std").math.Log2Int(c_uint), 8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(@import("std").math.Log2Int(c_uint), 8))) | ((__bsx & @as(c_uint, 255)) << @intCast(@import("std").math.Log2Int(c_uint), 24));
}
fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    return @bitCast(__uint64_t, @truncate(c_ulong, ((((((((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 56)) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 71776119061217280)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 40))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 280375465082880)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 24))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 1095216660480)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 8))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 4278190080)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 8))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 16711680)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 24))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 65280)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 40))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 255)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 56))));
}
fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    return __x;
}
fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    return __x;
}
fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    return __x;
}
const __sigset_t = extern struct {
    __val: [16]c_ulong,
};
const sigset_t = __sigset_t;
const struct_timeval = extern struct {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
};
const struct_timespec = extern struct {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
};
const suseconds_t = __suseconds_t;
const __fd_mask = c_long;
const fd_set = extern struct {
    __fds_bits: [16]__fd_mask,
};
const fd_mask = __fd_mask;
extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
const blksize_t = __blksize_t;
const blkcnt_t = __blkcnt_t;
const fsblkcnt_t = __fsblkcnt_t;
const fsfilcnt_t = __fsfilcnt_t;
const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list,
    __next: [*c]struct___pthread_internal_list,
};
const __pthread_list_t = struct___pthread_internal_list;
const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist,
};
const __pthread_slist_t = struct___pthread_internal_slist;
const struct___pthread_mutex_s = extern struct {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
};
const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: i8,
    __pad1: [7]u8,
    __pad2: c_ulong,
    __flags: c_uint,
};
const struct_unnamed_2 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
const union_unnamed_1 = extern union {
    __wseq: c_ulonglong,
    __wseq32: struct_unnamed_2,
};
const struct_unnamed_4 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
const union_unnamed_3 = extern union {
    __g1_start: c_ulonglong,
    __g1_start32: struct_unnamed_4,
};
const struct___pthread_cond_s = extern struct {
    unnamed_0: union_unnamed_1,
    unnamed_1: union_unnamed_3,
    __g_refs: [2]c_uint,
    __g_size: [2]c_uint,
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [2]c_uint,
};
const __tss_t = c_uint;
const __thrd_t = c_ulong;
const __once_flag = extern struct {
    __data: c_int,
};
const pthread_t = c_ulong;
const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
const pthread_key_t = c_uint;
const pthread_once_t = c_int;
const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
const pthread_attr_t = union_pthread_attr_t;
const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
const pthread_spinlock_t = c_int;
const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
extern fn random() c_long;
extern fn srandom(__seed: c_uint) void;
extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
extern fn setstate(__statebuf: [*c]u8) [*c]u8;
const struct_random_data = extern struct {
    fptr: [*c]i32,
    rptr: [*c]i32,
    state: [*c]i32,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: [*c]i32,
};
extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
extern fn rand() c_int;
extern fn srand(__seed: c_uint) void;
extern fn rand_r(__seed: [*c]c_uint) c_int;
extern fn drand48() f64;
extern fn erand48(__xsubi: [*c]c_ushort) f64;
extern fn lrand48() c_long;
extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
extern fn mrand48() c_long;
extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
extern fn srand48(__seedval: c_long) void;
extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
extern fn lcong48(__param: [*c]c_ushort) void;
const struct_drand48_data = extern struct {
    __x: [3]c_ushort,
    __old_x: [3]c_ushort,
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
};
extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
extern fn malloc(__size: c_ulong) ?*c_void;
extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*c_void;
extern fn realloc(__ptr: ?*c_void, __size: c_ulong) ?*c_void;
extern fn reallocarray(__ptr: ?*c_void, __nmemb: usize, __size: usize) ?*c_void;
extern fn free(__ptr: ?*c_void) void;
extern fn alloca(__size: c_ulong) ?*c_void;
extern fn valloc(__size: usize) ?*c_void;
extern fn posix_memalign(__memptr: [*c]?*c_void, __alignment: usize, __size: usize) c_int;
extern fn aligned_alloc(__alignment: usize, __size: usize) ?*c_void;
extern fn abort() noreturn;
extern fn atexit(__func: ?fn () callconv(.C) void) c_int;
extern fn at_quick_exit(__func: ?fn () callconv(.C) void) c_int;
extern fn on_exit(__func: ?fn (c_int, ?*c_void) callconv(.C) void, __arg: ?*c_void) c_int;
extern fn exit(__status: c_int) noreturn;
extern fn quick_exit(__status: c_int) noreturn;
extern fn _Exit(__status: c_int) noreturn;
extern fn getenv(__name: [*c]const u8) [*c]u8;
extern fn putenv(__string: [*c]u8) c_int;
extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
extern fn unsetenv(__name: [*c]const u8) c_int;
extern fn clearenv() c_int;
extern fn mktemp(__template: [*c]u8) [*c]u8;
extern fn mkstemp(__template: [*c]u8) c_int;
extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
extern fn mkdtemp(__template: [*c]u8) [*c]u8;
extern fn system(__command: [*c]const u8) c_int;
extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
const __compar_fn_t = ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int;
fn bsearch(arg___key: ?*const c_void, arg___base: ?*const c_void, arg___nmemb: usize, arg___size: usize, arg___compar: __compar_fn_t) callconv(.C) ?*c_void {
    var __key = arg___key;
    var __base = arg___base;
    var __nmemb = arg___nmemb;
    var __size = arg___size;
    var __compar = arg___compar;
    var __l: usize = undefined;
    var __u: usize = undefined;
    var __idx: usize = undefined;
    var __p: ?*const c_void = undefined;
    var __comparison: c_int = undefined;
    __l = 0;
    __u = __nmemb;
    while (__l < __u) {
        __idx = (__l +% __u) / @bitCast(c_ulong, @as(c_long, @as(c_int, 2)));
        __p = @intToPtr(?*c_void, @ptrToInt(@ptrCast([*c]const u8, @alignCast(@import("std").meta.alignment(u8), __base)) + (__idx *% __size)));
        __comparison = __compar.?(__key, __p);
        if (__comparison < @as(c_int, 0)) {
            __u = __idx;
        } else if (__comparison > @as(c_int, 0)) {
            __l = __idx +% @bitCast(c_ulong, @as(c_long, @as(c_int, 1)));
        } else return @intToPtr(?*c_void, @ptrToInt(__p));
    }
    return @intToPtr(?*c_void, @as(c_int, 0));
}
extern fn qsort(__base: ?*c_void, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
extern fn abs(__x: c_int) c_int;
extern fn labs(__x: c_long) c_long;
extern fn llabs(__x: c_longlong) c_longlong;
extern fn div(__numer: c_int, __denom: c_int) div_t;
extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
extern fn rpmatch(__response: [*c]const u8) c_int;
extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
const struct_WrenVM = opaque {};
pub const WrenVM = struct_WrenVM;
const struct_WrenHandle = opaque {};
pub const WrenHandle = struct_WrenHandle;
pub const WrenReallocateFn = ?fn (?*c_void, usize, ?*c_void) callconv(.C) ?*c_void;
pub const WrenForeignMethodFn = ?fn (?*WrenVM) callconv(.C) void;
pub const WrenFinalizerFn = ?fn (?*c_void) callconv(.C) void;
pub const WrenResolveModuleFn = ?fn (?*WrenVM, [*c]const u8, [*c]const u8) callconv(.C) [*c]const u8;
pub const WrenLoadModuleCompleteFn = ?fn (?*WrenVM, [*c]const u8, struct_WrenLoadModuleResult) callconv(.C) void;
const struct_WrenLoadModuleResult = extern struct {
    source: [*c]const u8,
    onComplete: WrenLoadModuleCompleteFn,
    userData: ?*c_void,
};
pub const WrenLoadModuleResult = struct_WrenLoadModuleResult;
pub const WrenLoadModuleFn = ?fn (?*WrenVM, [*c]const u8) callconv(.C) WrenLoadModuleResult;
pub const WrenBindForeignMethodFn = ?fn (?*WrenVM, [*c]const u8, [*c]const u8, bool, [*c]const u8) callconv(.C) WrenForeignMethodFn;
pub const WrenWriteFn = ?fn (?*WrenVM, [*c]const u8) callconv(.C) void;
pub const WrenErrorType = extern enum(c_int) {
    WREN_ERROR_COMPILE,
    WREN_ERROR_RUNTIME,
    WREN_ERROR_STACK_TRACE,
    _,
};
pub const WREN_ERROR_COMPILE = @enumToInt(WrenErrorType.WREN_ERROR_COMPILE);
pub const WREN_ERROR_RUNTIME = @enumToInt(WrenErrorType.WREN_ERROR_RUNTIME);
pub const WREN_ERROR_STACK_TRACE = @enumToInt(WrenErrorType.WREN_ERROR_STACK_TRACE);
pub const WrenErrorFn = ?fn (?*WrenVM, WrenErrorType, [*c]const u8, c_int, [*c]const u8) callconv(.C) void;
pub const WrenForeignClassMethods = extern struct {
    allocate: WrenForeignMethodFn,
    finalize: WrenFinalizerFn,
};
pub const WrenBindForeignClassFn = ?fn (?*WrenVM, [*c]const u8, [*c]const u8) callconv(.C) WrenForeignClassMethods;
pub const WrenConfiguration = extern struct {
    reallocateFn: WrenReallocateFn,
    resolveModuleFn: WrenResolveModuleFn,
    loadModuleFn: WrenLoadModuleFn,
    bindForeignMethodFn: WrenBindForeignMethodFn,
    bindForeignClassFn: WrenBindForeignClassFn,
    writeFn: WrenWriteFn,
    errorFn: WrenErrorFn,
    initialHeapSize: usize,
    minHeapSize: usize,
    heapGrowthPercent: c_int,
    userData: ?*c_void,
};
pub const WrenInterpretResult = extern enum(c_int) {
    WREN_RESULT_SUCCESS,
    WREN_RESULT_COMPILE_ERROR,
    WREN_RESULT_RUNTIME_ERROR,
    _,
};
pub const WREN_RESULT_SUCCESS = @enumToInt(WrenInterpretResult.WREN_RESULT_SUCCESS);
pub const WREN_RESULT_COMPILE_ERROR = @enumToInt(WrenInterpretResult.WREN_RESULT_COMPILE_ERROR);
pub const WREN_RESULT_RUNTIME_ERROR = @enumToInt(WrenInterpretResult.WREN_RESULT_RUNTIME_ERROR);
pub const WrenType = extern enum(c_int) {
    WREN_TYPE_BOOL,
    WREN_TYPE_NUM,
    WREN_TYPE_FOREIGN,
    WREN_TYPE_LIST,
    WREN_TYPE_MAP,
    WREN_TYPE_NULL,
    WREN_TYPE_STRING,
    WREN_TYPE_UNKNOWN,
    _,
};
pub const WREN_TYPE_BOOL = @enumToInt(WrenType.WREN_TYPE_BOOL);
pub const WREN_TYPE_NUM = @enumToInt(WrenType.WREN_TYPE_NUM);
pub const WREN_TYPE_FOREIGN = @enumToInt(WrenType.WREN_TYPE_FOREIGN);
pub const WREN_TYPE_LIST = @enumToInt(WrenType.WREN_TYPE_LIST);
pub const WREN_TYPE_MAP = @enumToInt(WrenType.WREN_TYPE_MAP);
pub const WREN_TYPE_NULL = @enumToInt(WrenType.WREN_TYPE_NULL);
pub const WREN_TYPE_STRING = @enumToInt(WrenType.WREN_TYPE_STRING);
pub const WREN_TYPE_UNKNOWN = @enumToInt(WrenType.WREN_TYPE_UNKNOWN);
pub extern fn wrenGetVersionNumber(...) c_int;
pub extern fn wrenInitConfiguration(configuration: [*c]WrenConfiguration) void;
pub extern fn wrenNewVM(configuration: [*c]WrenConfiguration) ?*WrenVM;
pub extern fn wrenFreeVM(vm: ?*WrenVM) void;
pub extern fn wrenCollectGarbage(vm: ?*WrenVM) void;
pub extern fn wrenInterpret(vm: ?*WrenVM, module: [*c]const u8, source: [*c]const u8) WrenInterpretResult;
pub extern fn wrenMakeCallHandle(vm: ?*WrenVM, signature: [*c]const u8) ?*WrenHandle;
pub extern fn wrenCall(vm: ?*WrenVM, method: ?*WrenHandle) WrenInterpretResult;
pub extern fn wrenReleaseHandle(vm: ?*WrenVM, handle: ?*WrenHandle) void;
pub extern fn wrenGetSlotCount(vm: ?*WrenVM) c_int;
pub extern fn wrenEnsureSlots(vm: ?*WrenVM, numSlots: c_int) void;
pub extern fn wrenGetSlotType(vm: ?*WrenVM, slot: c_int) WrenType;
pub extern fn wrenGetSlotBool(vm: ?*WrenVM, slot: c_int) bool;
pub extern fn wrenGetSlotBytes(vm: ?*WrenVM, slot: c_int, length: [*c]c_int) [*c]const u8;
pub extern fn wrenGetSlotDouble(vm: ?*WrenVM, slot: c_int) f64;
pub extern fn wrenGetSlotForeign(vm: ?*WrenVM, slot: c_int) ?*c_void;
pub extern fn wrenGetSlotString(vm: ?*WrenVM, slot: c_int) [*c]const u8;
pub extern fn wrenGetSlotHandle(vm: ?*WrenVM, slot: c_int) ?*WrenHandle;
pub extern fn wrenSetSlotBool(vm: ?*WrenVM, slot: c_int, value: bool) void;
pub extern fn wrenSetSlotBytes(vm: ?*WrenVM, slot: c_int, bytes: [*c]const u8, length: usize) void;
pub extern fn wrenSetSlotDouble(vm: ?*WrenVM, slot: c_int, value: f64) void;
pub extern fn wrenSetSlotNewForeign(vm: ?*WrenVM, slot: c_int, classSlot: c_int, size: usize) ?*c_void;
pub extern fn wrenSetSlotNewList(vm: ?*WrenVM, slot: c_int) void;
pub extern fn wrenSetSlotNewMap(vm: ?*WrenVM, slot: c_int) void;
pub extern fn wrenSetSlotNull(vm: ?*WrenVM, slot: c_int) void;
pub extern fn wrenSetSlotString(vm: ?*WrenVM, slot: c_int, text: [*c]const u8) void;
pub extern fn wrenSetSlotHandle(vm: ?*WrenVM, slot: c_int, handle: ?*WrenHandle) void;
pub extern fn wrenGetListCount(vm: ?*WrenVM, slot: c_int) c_int;
pub extern fn wrenGetListElement(vm: ?*WrenVM, listSlot: c_int, index: c_int, elementSlot: c_int) void;
pub extern fn wrenSetListElement(vm: ?*WrenVM, listSlot: c_int, index: c_int, elementSlot: c_int) void;
pub extern fn wrenInsertInList(vm: ?*WrenVM, listSlot: c_int, index: c_int, elementSlot: c_int) void;
pub extern fn wrenGetMapCount(vm: ?*WrenVM, slot: c_int) c_int;
pub extern fn wrenGetMapContainsKey(vm: ?*WrenVM, mapSlot: c_int, keySlot: c_int) bool;
pub extern fn wrenGetMapValue(vm: ?*WrenVM, mapSlot: c_int, keySlot: c_int, valueSlot: c_int) void;
pub extern fn wrenSetMapValue(vm: ?*WrenVM, mapSlot: c_int, keySlot: c_int, valueSlot: c_int) void;
pub extern fn wrenRemoveMapValue(vm: ?*WrenVM, mapSlot: c_int, keySlot: c_int, removedValueSlot: c_int) void;
pub extern fn wrenGetVariable(vm: ?*WrenVM, module: [*c]const u8, name: [*c]const u8, slot: c_int) void;
pub extern fn wrenHasVariable(vm: ?*WrenVM, module: [*c]const u8, name: [*c]const u8) bool;
pub extern fn wrenHasModule(vm: ?*WrenVM, module: [*c]const u8) bool;
pub extern fn wrenAbortFiber(vm: ?*WrenVM, slot: c_int) void;
pub extern fn wrenGetUserData(vm: ?*WrenVM) ?*c_void;
pub extern fn wrenSetUserData(vm: ?*WrenVM, userData: ?*c_void) void;
const __INTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):62:9
const __UINTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):66:9
const __PTRDIFF_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):73:9
const __INTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):77:9
const __SIZE_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):81:9
const __UINTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):96:9
const __INT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):159:9
const __UINT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):187:9
const __INT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):225:9
const __UINT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):229:9
const __INT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):265:9
const __UINT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):269:9
const va_start = @compileError("TODO implement function '__builtin_va_start' in std.c.builtins"); // /usr/lib/zig/include/stdarg.h:17:9
const va_end = @compileError("TODO implement function '__builtin_va_end' in std.c.builtins"); // /usr/lib/zig/include/stdarg.h:18:9
const va_arg = @compileError("TODO implement function '__builtin_va_arg' in std.c.builtins"); // /usr/lib/zig/include/stdarg.h:19:9
const __va_copy = @compileError("TODO implement function '__builtin_va_copy' in std.c.builtins"); // /usr/lib/zig/include/stdarg.h:24:9
const va_copy = @compileError("TODO implement function '__builtin_va_copy' in std.c.builtins"); // /usr/lib/zig/include/stdarg.h:27:9
const __GLIBC_USE = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/lib/zig/libc/include/generic-glibc/features.h:179:9
const __NTH = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:57:11
const __NTHNL = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:58:11
const __CONCAT = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:109:9
const __STRING = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:110:9
const __warnattr = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:144:10
const __errordecl = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:145:10
const __flexarr = @compileError("unable to translate C expr: unexpected token .LBracket"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:153:10
const __REDIRECT = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:184:10
const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:191:11
const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:193:11
const __ASMNAME2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:197:10
const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:229:10
const __extern_inline = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:356:11
const __extern_always_inline = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:357:11
const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:451:10
const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:522:10
const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:523:10
const __glibc_macro_warning1 = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:537:10
const __attr_access = @compileError("unable to translate C expr: unexpected token .Eof"); // /usr/lib/zig/libc/include/generic-glibc/sys/cdefs.h:569:11
const __f32 = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:91:12
const __f64x = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:120:13
const __CFLOAT32 = @compileError("unable to translate C expr: unexpected token .Keyword_complex"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:149:12
const __CFLOAT64 = @compileError("unable to translate C expr: unexpected token .Keyword_complex"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:160:13
const __CFLOAT32X = @compileError("unable to translate C expr: unexpected token .Keyword_complex"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:169:12
const __CFLOAT64X = @compileError("unable to translate C expr: unexpected token .Keyword_complex"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:178:13
const __builtin_huge_valf32 = @compileError("TODO implement function '__builtin_huge_valf' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:218:12
const __builtin_inff32 = @compileError("TODO implement function '__builtin_inff' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:219:12
const __builtin_nanf32 = @compileError("TODO implement function '__builtin_nanf' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:220:12
const __builtin_nansf32 = @compileError("TODO implement function '__builtin_nansf' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:221:12
const __builtin_huge_valf64 = @compileError("TODO implement function '__builtin_huge_val' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:255:13
const __builtin_inff64 = @compileError("TODO implement function '__builtin_inf' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:256:13
const __builtin_nanf64 = @compileError("TODO implement function '__builtin_nan' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:257:13
const __builtin_nansf64 = @compileError("TODO implement function '__builtin_nans' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:258:13
const __builtin_huge_valf32x = @compileError("TODO implement function '__builtin_huge_val' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:272:12
const __builtin_inff32x = @compileError("TODO implement function '__builtin_inf' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:273:12
const __builtin_nanf32x = @compileError("TODO implement function '__builtin_nan' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:274:12
const __builtin_nansf32x = @compileError("TODO implement function '__builtin_nans' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:275:12
const __builtin_huge_valf64x = @compileError("TODO implement function '__builtin_huge_vall' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:289:13
const __builtin_inff64x = @compileError("TODO implement function '__builtin_infl' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:290:13
const __builtin_nanf64x = @compileError("TODO implement function '__builtin_nanl' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:291:13
const __builtin_nansf64x = @compileError("TODO implement function '__builtin_nansl' in std.c.builtins"); // /usr/lib/zig/libc/include/generic-glibc/bits/floatn-common.h:292:13
const __S16_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:109:9
const __U16_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:110:9
const __SLONGWORD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:113:9
const __ULONGWORD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:114:9
const __SQUAD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:128:10
const __UQUAD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:129:10
const __SWORD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:130:10
const __UWORD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:131:10
const __S64_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:134:10
const __U64_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:135:10
const __STD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_typedef"); // /usr/lib/zig/libc/include/generic-glibc/bits/types.h:137:10
const __FSID_T_TYPE = @compileError("unable to translate C expr: expected Identifier instead got: LBrace"); // /usr/lib/zig/libc/include/x86_64-linux-gnu/bits/typesizes.h:73:9
const __FD_ZERO = @compileError("unable to translate C expr: unexpected token .Keyword_do"); // /usr/lib/zig/libc/include/generic-glibc/bits/select.h:25:9
const __FD_SET = @compileError("unable to translate C expr: expected ')'"); // /usr/lib/zig/libc/include/generic-glibc/bits/select.h:32:9
const __FD_CLR = @compileError("unable to translate C expr: expected ')'"); // /usr/lib/zig/libc/include/generic-glibc/bits/select.h:34:9
const _SIGSET_NWORDS = @compileError("unable to translate C expr: expected ')'"); // /usr/lib/zig/libc/include/generic-glibc/bits/types/__sigset_t.h:4:9
const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /usr/lib/zig/libc/include/x86_64-linux-gnu/bits/struct_mutex.h:56:10
const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token .LBrace"); // /usr/lib/zig/libc/include/x86_64-linux-gnu/bits/struct_rwlock.h:40:11
const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /usr/lib/zig/libc/include/generic-glibc/bits/thread-shared-types.h:127:9
const __llvm__ = @as(c_int, 1);
const __clang__ = @as(c_int, 1);
const __clang_major__ = @as(c_int, 12);
const __clang_minor__ = @as(c_int, 0);
const __clang_patchlevel__ = @as(c_int, 1);
const __clang_version__ = "12.0.1 ";
const __GNUC__ = @as(c_int, 4);
const __GNUC_MINOR__ = @as(c_int, 2);
const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
const __GXX_ABI_VERSION = @as(c_int, 1002);
const __ATOMIC_RELAXED = @as(c_int, 0);
const __ATOMIC_CONSUME = @as(c_int, 1);
const __ATOMIC_ACQUIRE = @as(c_int, 2);
const __ATOMIC_RELEASE = @as(c_int, 3);
const __ATOMIC_ACQ_REL = @as(c_int, 4);
const __ATOMIC_SEQ_CST = @as(c_int, 5);
const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
const __VERSION__ = "Clang 12.0.1";
const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
const __OPTIMIZE__ = @as(c_int, 1);
const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
const __LITTLE_ENDIAN__ = @as(c_int, 1);
const _LP64 = @as(c_int, 1);
const __LP64__ = @as(c_int, 1);
const __CHAR_BIT__ = @as(c_int, 8);
const __SCHAR_MAX__ = @as(c_int, 127);
const __SHRT_MAX__ = @as(c_int, 32767);
const __INT_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
const __LONG_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
const __WCHAR_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
const __WINT_MAX__ = @import("std").meta.promoteIntLiteral(c_uint, 4294967295, .decimal);
const __INTMAX_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
const __SIZE_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
const __UINTMAX_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
const __PTRDIFF_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
const __INTPTR_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
const __UINTPTR_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
const __SIZEOF_DOUBLE__ = @as(c_int, 8);
const __SIZEOF_FLOAT__ = @as(c_int, 4);
const __SIZEOF_INT__ = @as(c_int, 4);
const __SIZEOF_LONG__ = @as(c_int, 8);
const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
const __SIZEOF_POINTER__ = @as(c_int, 8);
const __SIZEOF_SHORT__ = @as(c_int, 2);
const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
const __SIZEOF_SIZE_T__ = @as(c_int, 8);
const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
const __SIZEOF_WINT_T__ = @as(c_int, 4);
const __SIZEOF_INT128__ = @as(c_int, 16);
const __INTMAX_FMTd__ = "ld";
const __INTMAX_FMTi__ = "li";
const __INTMAX_C_SUFFIX__ = L;
const __UINTMAX_FMTo__ = "lo";
const __UINTMAX_FMTu__ = "lu";
const __UINTMAX_FMTx__ = "lx";
const __UINTMAX_FMTX__ = "lX";
const __UINTMAX_C_SUFFIX__ = UL;
const __INTMAX_WIDTH__ = @as(c_int, 64);
const __PTRDIFF_FMTd__ = "ld";
const __PTRDIFF_FMTi__ = "li";
const __PTRDIFF_WIDTH__ = @as(c_int, 64);
const __INTPTR_FMTd__ = "ld";
const __INTPTR_FMTi__ = "li";
const __INTPTR_WIDTH__ = @as(c_int, 64);
const __SIZE_FMTo__ = "lo";
const __SIZE_FMTu__ = "lu";
const __SIZE_FMTx__ = "lx";
const __SIZE_FMTX__ = "lX";
const __SIZE_WIDTH__ = @as(c_int, 64);
const __WCHAR_TYPE__ = c_int;
const __WCHAR_WIDTH__ = @as(c_int, 32);
const __WINT_TYPE__ = c_uint;
const __WINT_WIDTH__ = @as(c_int, 32);
const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
const __SIG_ATOMIC_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
const __CHAR16_TYPE__ = c_ushort;
const __CHAR32_TYPE__ = c_uint;
const __UINTMAX_WIDTH__ = @as(c_int, 64);
const __UINTPTR_FMTo__ = "lo";
const __UINTPTR_FMTu__ = "lu";
const __UINTPTR_FMTx__ = "lx";
const __UINTPTR_FMTX__ = "lX";
const __UINTPTR_WIDTH__ = @as(c_int, 64);
const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
const __FLT_HAS_DENORM__ = @as(c_int, 1);
const __FLT_DIG__ = @as(c_int, 6);
const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
const __FLT_HAS_INFINITY__ = @as(c_int, 1);
const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
const __FLT_MANT_DIG__ = @as(c_int, 24);
const __FLT_MAX_10_EXP__ = @as(c_int, 38);
const __FLT_MAX_EXP__ = @as(c_int, 128);
const __FLT_MAX__ = @as(f32, 3.40282347e+38);
const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
const __FLT_MIN_EXP__ = -@as(c_int, 125);
const __FLT_MIN__ = @as(f32, 1.17549435e-38);
const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
const __DBL_HAS_DENORM__ = @as(c_int, 1);
const __DBL_DIG__ = @as(c_int, 15);
const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
const __DBL_EPSILON__ = 2.2204460492503131e-16;
const __DBL_HAS_INFINITY__ = @as(c_int, 1);
const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
const __DBL_MANT_DIG__ = @as(c_int, 53);
const __DBL_MAX_10_EXP__ = @as(c_int, 308);
const __DBL_MAX_EXP__ = @as(c_int, 1024);
const __DBL_MAX__ = 1.7976931348623157e+308;
const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
const __DBL_MIN_EXP__ = -@as(c_int, 1021);
const __DBL_MIN__ = 2.2250738585072014e-308;
const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
const __LDBL_HAS_DENORM__ = @as(c_int, 1);
const __LDBL_DIG__ = @as(c_int, 18);
const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
const __LDBL_MANT_DIG__ = @as(c_int, 64);
const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
const __LDBL_MAX_EXP__ = @as(c_int, 16384);
const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
const __POINTER_WIDTH__ = @as(c_int, 64);
const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
const __WINT_UNSIGNED__ = @as(c_int, 1);
const __INT8_TYPE__ = i8;
const __INT8_FMTd__ = "hhd";
const __INT8_FMTi__ = "hhi";
const __INT16_TYPE__ = c_short;
const __INT16_FMTd__ = "hd";
const __INT16_FMTi__ = "hi";
const __INT32_TYPE__ = c_int;
const __INT32_FMTd__ = "d";
const __INT32_FMTi__ = "i";
const __INT64_FMTd__ = "ld";
const __INT64_FMTi__ = "li";
const __INT64_C_SUFFIX__ = L;
const __UINT8_TYPE__ = u8;
const __UINT8_FMTo__ = "hho";
const __UINT8_FMTu__ = "hhu";
const __UINT8_FMTx__ = "hhx";
const __UINT8_FMTX__ = "hhX";
const __UINT8_MAX__ = @as(c_int, 255);
const __INT8_MAX__ = @as(c_int, 127);
const __UINT16_TYPE__ = c_ushort;
const __UINT16_FMTo__ = "ho";
const __UINT16_FMTu__ = "hu";
const __UINT16_FMTx__ = "hx";
const __UINT16_FMTX__ = "hX";
const __UINT16_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 65535, .decimal);
const __INT16_MAX__ = @as(c_int, 32767);
const __UINT32_TYPE__ = c_uint;
const __UINT32_FMTo__ = "o";
const __UINT32_FMTu__ = "u";
const __UINT32_FMTx__ = "x";
const __UINT32_FMTX__ = "X";
const __UINT32_C_SUFFIX__ = U;
const __UINT32_MAX__ = @import("std").meta.promoteIntLiteral(c_uint, 4294967295, .decimal);
const __INT32_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
const __UINT64_FMTo__ = "lo";
const __UINT64_FMTu__ = "lu";
const __UINT64_FMTx__ = "lx";
const __UINT64_FMTX__ = "lX";
const __UINT64_C_SUFFIX__ = UL;
const __UINT64_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
const __INT64_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
const __INT_LEAST8_TYPE__ = i8;
const __INT_LEAST8_MAX__ = @as(c_int, 127);
const __INT_LEAST8_FMTd__ = "hhd";
const __INT_LEAST8_FMTi__ = "hhi";
const __UINT_LEAST8_TYPE__ = u8;
const __UINT_LEAST8_MAX__ = @as(c_int, 255);
const __UINT_LEAST8_FMTo__ = "hho";
const __UINT_LEAST8_FMTu__ = "hhu";
const __UINT_LEAST8_FMTx__ = "hhx";
const __UINT_LEAST8_FMTX__ = "hhX";
const __INT_LEAST16_TYPE__ = c_short;
const __INT_LEAST16_MAX__ = @as(c_int, 32767);
const __INT_LEAST16_FMTd__ = "hd";
const __INT_LEAST16_FMTi__ = "hi";
const __UINT_LEAST16_TYPE__ = c_ushort;
const __UINT_LEAST16_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 65535, .decimal);
const __UINT_LEAST16_FMTo__ = "ho";
const __UINT_LEAST16_FMTu__ = "hu";
const __UINT_LEAST16_FMTx__ = "hx";
const __UINT_LEAST16_FMTX__ = "hX";
const __INT_LEAST32_TYPE__ = c_int;
const __INT_LEAST32_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
const __INT_LEAST32_FMTd__ = "d";
const __INT_LEAST32_FMTi__ = "i";
const __UINT_LEAST32_TYPE__ = c_uint;
const __UINT_LEAST32_MAX__ = @import("std").meta.promoteIntLiteral(c_uint, 4294967295, .decimal);
const __UINT_LEAST32_FMTo__ = "o";
const __UINT_LEAST32_FMTu__ = "u";
const __UINT_LEAST32_FMTx__ = "x";
const __UINT_LEAST32_FMTX__ = "X";
const __INT_LEAST64_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
const __INT_LEAST64_FMTd__ = "ld";
const __INT_LEAST64_FMTi__ = "li";
const __UINT_LEAST64_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
const __UINT_LEAST64_FMTo__ = "lo";
const __UINT_LEAST64_FMTu__ = "lu";
const __UINT_LEAST64_FMTx__ = "lx";
const __UINT_LEAST64_FMTX__ = "lX";
const __INT_FAST8_TYPE__ = i8;
const __INT_FAST8_MAX__ = @as(c_int, 127);
const __INT_FAST8_FMTd__ = "hhd";
const __INT_FAST8_FMTi__ = "hhi";
const __UINT_FAST8_TYPE__ = u8;
const __UINT_FAST8_MAX__ = @as(c_int, 255);
const __UINT_FAST8_FMTo__ = "hho";
const __UINT_FAST8_FMTu__ = "hhu";
const __UINT_FAST8_FMTx__ = "hhx";
const __UINT_FAST8_FMTX__ = "hhX";
const __INT_FAST16_TYPE__ = c_short;
const __INT_FAST16_MAX__ = @as(c_int, 32767);
const __INT_FAST16_FMTd__ = "hd";
const __INT_FAST16_FMTi__ = "hi";
const __UINT_FAST16_TYPE__ = c_ushort;
const __UINT_FAST16_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 65535, .decimal);
const __UINT_FAST16_FMTo__ = "ho";
const __UINT_FAST16_FMTu__ = "hu";
const __UINT_FAST16_FMTx__ = "hx";
const __UINT_FAST16_FMTX__ = "hX";
const __INT_FAST32_TYPE__ = c_int;
const __INT_FAST32_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
const __INT_FAST32_FMTd__ = "d";
const __INT_FAST32_FMTi__ = "i";
const __UINT_FAST32_TYPE__ = c_uint;
const __UINT_FAST32_MAX__ = @import("std").meta.promoteIntLiteral(c_uint, 4294967295, .decimal);
const __UINT_FAST32_FMTo__ = "o";
const __UINT_FAST32_FMTu__ = "u";
const __UINT_FAST32_FMTx__ = "x";
const __UINT_FAST32_FMTX__ = "X";
const __INT_FAST64_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
const __INT_FAST64_FMTd__ = "ld";
const __INT_FAST64_FMTi__ = "li";
const __UINT_FAST64_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
const __UINT_FAST64_FMTo__ = "lo";
const __UINT_FAST64_FMTu__ = "lu";
const __UINT_FAST64_FMTx__ = "lx";
const __UINT_FAST64_FMTX__ = "lX";
const __FINITE_MATH_ONLY__ = @as(c_int, 0);
const __GNUC_STDC_INLINE__ = @as(c_int, 1);
const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
const __PIC__ = @as(c_int, 2);
const __pic__ = @as(c_int, 2);
const __FLT_EVAL_METHOD__ = @as(c_int, 0);
const __FLT_RADIX__ = @as(c_int, 2);
const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
const __SSP_STRONG__ = @as(c_int, 2);
const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
const __code_model_small__ = @as(c_int, 1);
const __amd64__ = @as(c_int, 1);
const __amd64 = @as(c_int, 1);
const __x86_64 = @as(c_int, 1);
const __x86_64__ = @as(c_int, 1);
const __SEG_GS = @as(c_int, 1);
const __SEG_FS = @as(c_int, 1);
const __seg_gs = __attribute__(address_space(@as(c_int, 256)));
const __seg_fs = __attribute__(address_space(@as(c_int, 257)));
const __k8 = @as(c_int, 1);
const __k8__ = @as(c_int, 1);
const __tune_k8__ = @as(c_int, 1);
const __NO_MATH_INLINES = @as(c_int, 1);
const __LAHF_SAHF__ = @as(c_int, 1);
const __FSGSBASE__ = @as(c_int, 1);
const __FXSR__ = @as(c_int, 1);
const __INVPCID__ = @as(c_int, 1);
const __SSE4_2__ = @as(c_int, 1);
const __SSE4_1__ = @as(c_int, 1);
const __SSSE3__ = @as(c_int, 1);
const __SSE3__ = @as(c_int, 1);
const __SSE2__ = @as(c_int, 1);
const __SSE2_MATH__ = @as(c_int, 1);
const __SSE__ = @as(c_int, 1);
const __SSE_MATH__ = @as(c_int, 1);
const __MMX__ = @as(c_int, 1);
const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
const __SIZEOF_FLOAT128__ = @as(c_int, 16);
const unix = @as(c_int, 1);
const __unix = @as(c_int, 1);
const __unix__ = @as(c_int, 1);
const linux = @as(c_int, 1);
const __linux = @as(c_int, 1);
const __linux__ = @as(c_int, 1);
const __ELF__ = @as(c_int, 1);
const __gnu_linux__ = @as(c_int, 1);
const __FLOAT128__ = @as(c_int, 1);
const __STDC__ = @as(c_int, 1);
const __STDC_HOSTED__ = @as(c_int, 1);
const __STDC_VERSION__ = @as(c_long, 201710);
const __STDC_UTF_16__ = @as(c_int, 1);
const __STDC_UTF_32__ = @as(c_int, 1);
const _DEBUG = @as(c_int, 1);
const __GNUC_VA_LIST = @as(c_int, 1);
const _FEATURES_H = @as(c_int, 1);
inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
const _DEFAULT_SOURCE = @as(c_int, 1);
const __GLIBC_USE_ISOC2X = @as(c_int, 0);
const __USE_ISOC11 = @as(c_int, 1);
const __USE_ISOC99 = @as(c_int, 1);
const __USE_ISOC95 = @as(c_int, 1);
const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
const _POSIX_SOURCE = @as(c_int, 1);
const _POSIX_C_SOURCE = @as(c_long, 200809);
const __USE_POSIX = @as(c_int, 1);
const __USE_POSIX2 = @as(c_int, 1);
const __USE_POSIX199309 = @as(c_int, 1);
const __USE_POSIX199506 = @as(c_int, 1);
const __USE_XOPEN2K = @as(c_int, 1);
const __USE_XOPEN2K8 = @as(c_int, 1);
const _ATFILE_SOURCE = @as(c_int, 1);
const __USE_MISC = @as(c_int, 1);
const __USE_ATFILE = @as(c_int, 1);
const __USE_FORTIFY_LEVEL = @as(c_int, 0);
const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
const _STDC_PREDEF_H = @as(c_int, 1);
const __STDC_IEC_559__ = @as(c_int, 1);
const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
const __STDC_ISO_10646__ = @as(c_long, 201706);
const __GNU_LIBRARY__ = @as(c_int, 6);
const __GLIBC__ = @as(c_int, 2);
const __GLIBC_MINOR__ = @as(c_int, 33);
inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
const _SYS_CDEFS_H = @as(c_int, 1);
const __THROW = __attribute__(__nothrow__ ++ __LEAF);
const __THROWNL = __attribute__(__nothrow__);
inline fn __glibc_clang_has_extension(ext: anytype) @TypeOf(__has_extension(ext)) {
    return __has_extension(ext);
}
inline fn __P(args: anytype) @TypeOf(args) {
    return args;
}
inline fn __PMT(args: anytype) @TypeOf(args) {
    return args;
}
const __ptr_t = ?*c_void;
inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    return __builtin_object_size(ptr, @as(c_int, 0));
}
inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    return __bos0(__o);
}
inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    return __bos(__o);
}
const __glibc_c99_flexarr_available = @as(c_int, 1);
inline fn __ASMNAME(cname: anytype) @TypeOf(__ASMNAME2(__USER_LABEL_PREFIX__, cname)) {
    return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
}
const __attribute_malloc__ = __attribute__(__malloc__);
const __attribute_pure__ = __attribute__(__pure__);
const __attribute_const__ = __attribute__(__const__);
const __attribute_used__ = __attribute__(__used__);
const __attribute_noinline__ = __attribute__(__noinline__);
const __attribute_deprecated__ = __attribute__(__deprecated__);
inline fn __attribute_deprecated_msg__(msg: anytype) @TypeOf(__attribute__(__deprecated__(msg))) {
    return __attribute__(__deprecated__(msg));
}
inline fn __attribute_format_arg__(x: anytype) @TypeOf(__attribute__(__format_arg__(x))) {
    return __attribute__(__format_arg__(x));
}
inline fn __attribute_format_strfmon__(a: anytype, b: anytype) @TypeOf(__attribute__(__format__(__strfmon__, a, b))) {
    return __attribute__(__format__(__strfmon__, a, b));
}
inline fn __nonnull(params: anytype) @TypeOf(__attribute__(__nonnull__ ++ params)) {
    return __attribute__(__nonnull__ ++ params);
}
const __attribute_warn_unused_result__ = __attribute__(__warn_unused_result__);
const __always_inline = __inline ++ __attribute__(__always_inline__);
const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
const __restrict_arr = __restrict;
inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    return __builtin_expect(cond, @as(c_int, 0));
}
inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    return __builtin_expect(cond, @as(c_int, 1));
}
inline fn __glibc_has_attribute(attr: anytype) @TypeOf(__has_attribute(attr)) {
    return __has_attribute(attr);
}
const __WORDSIZE = @as(c_int, 64);
const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
const __SYSCALL_WORDSIZE = @as(c_int, 64);
const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    return name ++ proto;
}
inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    return name ++ proto;
}
inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    return name ++ proto ++ __THROW;
}
inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    return name ++ proto ++ __THROW;
}
inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    return __REDIRECT(name, proto, alias);
}
inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    return __REDIRECT_NTH(name, proto, alias);
}
inline fn __glibc_macro_warning(message: anytype) @TypeOf(__glibc_macro_warning1(GCC ++ warning ++ message)) {
    return __glibc_macro_warning1(GCC ++ warning ++ message);
}
const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
const __attribute_returns_twice__ = __attribute__(__returns_twice__);
const __USE_EXTERN_INLINES = @as(c_int, 1);
const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
const NULL = @import("std").meta.cast(?*c_void, @as(c_int, 0));
const _STDLIB_H = @as(c_int, 1);
const WNOHANG = @as(c_int, 1);
const WUNTRACED = @as(c_int, 2);
const WSTOPPED = @as(c_int, 2);
const WEXITED = @as(c_int, 4);
const WCONTINUED = @as(c_int, 8);
const WNOWAIT = @import("std").meta.promoteIntLiteral(c_int, 0x01000000, .hexadecimal);
const __WNOTHREAD = @import("std").meta.promoteIntLiteral(c_int, 0x20000000, .hexadecimal);
const __WALL = @import("std").meta.promoteIntLiteral(c_int, 0x40000000, .hexadecimal);
const __WCLONE = @import("std").meta.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").meta.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8)) {
    return (status & @import("std").meta.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8);
}
inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    return status & @as(c_int, 0x7f);
}
inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    return __WTERMSIG(status) == @as(c_int, 0);
}
inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").meta.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    return (@import("std").meta.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    return status == __W_CONTINUED;
}
inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    return status & __WCOREFLAG;
}
inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    return (ret << @as(c_int, 8)) | sig;
}
inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
const __W_CONTINUED = @import("std").meta.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
const __WCOREFLAG = @as(c_int, 0x80);
inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    return __WTERMSIG(status);
}
inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    return __WSTOPSIG(status);
}
inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    return __WIFEXITED(status);
}
inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    return __WIFSIGNALED(status);
}
inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    return __WIFSTOPPED(status);
}
inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    return __WIFCONTINUED(status);
}
const __HAVE_FLOAT128 = @as(c_int, 0);
const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
const __HAVE_FLOAT64X = @as(c_int, 1);
const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
const __HAVE_FLOAT16 = @as(c_int, 0);
const __HAVE_FLOAT32 = @as(c_int, 1);
const __HAVE_FLOAT64 = @as(c_int, 1);
const __HAVE_FLOAT32X = @as(c_int, 1);
const __HAVE_FLOAT128X = @as(c_int, 0);
const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
inline fn __f64(x: anytype) @TypeOf(x) {
    return x;
}
inline fn __f32x(x: anytype) @TypeOf(x) {
    return x;
}
const __ldiv_t_defined = @as(c_int, 1);
const __lldiv_t_defined = @as(c_int, 1);
const RAND_MAX = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
const EXIT_FAILURE = @as(c_int, 1);
const EXIT_SUCCESS = @as(c_int, 0);
const MB_CUR_MAX = __ctype_get_mb_cur_max();
const _SYS_TYPES_H = @as(c_int, 1);
const _BITS_TYPES_H = @as(c_int, 1);
const __TIMESIZE = __WORDSIZE;
const __S32_TYPE = c_int;
const __U32_TYPE = c_uint;
const __SLONG32_TYPE = c_int;
const __ULONG32_TYPE = c_uint;
const _BITS_TYPESIZES_H = @as(c_int, 1);
const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
const __DEV_T_TYPE = __UQUAD_TYPE;
const __UID_T_TYPE = __U32_TYPE;
const __GID_T_TYPE = __U32_TYPE;
const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
const __INO64_T_TYPE = __UQUAD_TYPE;
const __MODE_T_TYPE = __U32_TYPE;
const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
const __OFF64_T_TYPE = __SQUAD_TYPE;
const __PID_T_TYPE = __S32_TYPE;
const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
const __RLIM64_T_TYPE = __UQUAD_TYPE;
const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
const __ID_T_TYPE = __U32_TYPE;
const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
const __USECONDS_T_TYPE = __U32_TYPE;
const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
const __DADDR_T_TYPE = __S32_TYPE;
const __KEY_T_TYPE = __S32_TYPE;
const __CLOCKID_T_TYPE = __S32_TYPE;
const __TIMER_T_TYPE = ?*c_void;
const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
const __SSIZE_T_TYPE = __SWORD_TYPE;
const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
const __FD_SETSIZE = @as(c_int, 1024);
const _BITS_TIME64_H = @as(c_int, 1);
const __TIME64_T_TYPE = __TIME_T_TYPE;
const __clock_t_defined = @as(c_int, 1);
const __clockid_t_defined = @as(c_int, 1);
const __time_t_defined = @as(c_int, 1);
const __timer_t_defined = @as(c_int, 1);
const _BITS_STDINT_INTN_H = @as(c_int, 1);
const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
const _ENDIAN_H = @as(c_int, 1);
const _BITS_ENDIAN_H = @as(c_int, 1);
const __LITTLE_ENDIAN = @as(c_int, 1234);
const __BIG_ENDIAN = @as(c_int, 4321);
const __PDP_ENDIAN = @as(c_int, 3412);
const _BITS_ENDIANNESS_H = @as(c_int, 1);
const __BYTE_ORDER = __LITTLE_ENDIAN;
const __FLOAT_WORD_ORDER = __BYTE_ORDER;
inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    return blk: {
        _ = LO;
        break :blk HI;
    };
}
const LITTLE_ENDIAN = __LITTLE_ENDIAN;
const BIG_ENDIAN = __BIG_ENDIAN;
const PDP_ENDIAN = __PDP_ENDIAN;
const BYTE_ORDER = __BYTE_ORDER;
const _BITS_BYTESWAP_H = @as(c_int, 1);
inline fn __bswap_constant_16(x: anytype) __uint16_t {
    return @import("std").meta.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").meta.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").meta.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    return ((((x & @import("std").meta.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").meta.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
const _SYS_SELECT_H = @as(c_int, 1);
inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[__FD_ELT(d)] & __FD_MASK(d)) != @as(c_int, 0)) {
    return (__FDS_BITS(s)[__FD_ELT(d)] & __FD_MASK(d)) != @as(c_int, 0);
}
const __sigset_t_defined = @as(c_int, 1);
const __timeval_defined = @as(c_int, 1);
const _STRUCT_TIMESPEC = @as(c_int, 1);
const __NFDBITS = @as(c_int, 8) * @import("std").meta.cast(c_int, @import("std").meta.sizeof(__fd_mask));
inline fn __FD_ELT(d: anytype) @TypeOf(d / __NFDBITS) {
    return d / __NFDBITS;
}
inline fn __FD_MASK(d: anytype) __fd_mask {
    return @import("std").meta.cast(__fd_mask, @as(c_ulong, 1) << (d % __NFDBITS));
}
inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    return set.*.__fds_bits;
}
const FD_SETSIZE = __FD_SETSIZE;
const NFDBITS = __NFDBITS;
inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    return __FD_SET(fd, fdsetp);
}
inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    return __FD_CLR(fd, fdsetp);
}
inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    return __FD_ISSET(fd, fdsetp);
}
inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    return __FD_ZERO(fdsetp);
}
const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = __PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
const __have_pthread_attr_t = @as(c_int, 1);
const _ALLOCA_H = @as(c_int, 1);
const bool_5 = bool;
const true_6 = @as(c_int, 1);
const false_7 = @as(c_int, 0);
const __bool_true_false_are_defined = @as(c_int, 1);
pub const WREN_VERSION_MAJOR = @as(c_int, 0);
pub const WREN_VERSION_MINOR = @as(c_int, 4);
pub const WREN_VERSION_PATCH = @as(c_int, 0);
pub const WREN_VERSION_STRING = "0.4.0";
pub const WREN_VERSION_NUMBER = ((WREN_VERSION_MAJOR * @import("std").meta.promoteIntLiteral(c_int, 1000000, .decimal)) + (WREN_VERSION_MINOR * @as(c_int, 1000))) + WREN_VERSION_PATCH;
const __va_list_tag = struct___va_list_tag;
const timeval = struct_timeval;
const timespec = struct_timespec;
const __pthread_internal_list = struct___pthread_internal_list;
const __pthread_internal_slist = struct___pthread_internal_slist;
const __pthread_mutex_s = struct___pthread_mutex_s;
const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
const __pthread_cond_s = struct___pthread_cond_s;
const random_data = struct_random_data;
const drand48_data = struct_drand48_data;

package stdgo._internal.runtime.internal.sys;
function trailingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/sys/intrinsics.go#L54"
        if (_x == ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/internal/sys/intrinsics.go#L55"
            return (64 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/sys/intrinsics.go#L68"
        return (stdgo._internal.runtime.internal.sys.Sys__debruijn64tab._deBruijn64tab[(((((_x & -_x : stdgo.GoUInt64)) * (285870213051353865i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (58i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoInt);
    }

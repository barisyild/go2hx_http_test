package stdgo._internal.runtime.internal.sys;
function bswap32(_x:stdgo.GoUInt32):stdgo.GoUInt32 {
        var _c8 = @:assignType ((16711935u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _a = @:assignType ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & _c8 : stdgo.GoUInt32);
        var _b = @:assignType (((_x & _c8 : stdgo.GoUInt32)) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        _x = (_a | _b : stdgo.GoUInt32);
        var _c16 = @:assignType ((65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        _a = ((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & _c16 : stdgo.GoUInt32);
        _b = (((_x & _c16 : stdgo.GoUInt32)) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        _x = (_a | _b : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/sys/intrinsics.go#L192"
        return _x;
    }

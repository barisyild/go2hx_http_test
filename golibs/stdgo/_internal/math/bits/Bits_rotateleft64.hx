package stdgo._internal.math.bits;
function rotateLeft64(_x:stdgo.GoUInt64, _k:stdgo.GoInt):stdgo.GoUInt64 {
        {};
        var _s = @:assignType ((_k : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L220"
        return ((_x << _s : stdgo.GoUInt64) | (_x >> (((64u32 : stdgo.GoUInt) - _s : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }

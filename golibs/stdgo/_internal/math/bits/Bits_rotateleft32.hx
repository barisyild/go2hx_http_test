package stdgo._internal.math.bits;
function rotateLeft32(_x:stdgo.GoUInt32, _k:stdgo.GoInt):stdgo.GoUInt32 {
        {};
        var _s = @:assignType ((_k : stdgo.GoUInt) & (31u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L210"
        return ((_x << _s : stdgo.GoUInt32) | (_x >> (((32u32 : stdgo.GoUInt) - _s : stdgo.GoUInt)) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }

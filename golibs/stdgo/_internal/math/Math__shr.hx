package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _shr(_u1:stdgo.GoUInt64, _u2:stdgo.GoUInt64, _n:stdgo.GoUInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _r1 = (0 : stdgo.GoUInt64), _r2 = (0 : stdgo.GoUInt64);
        _r2 = (((_u2 >> _n : stdgo.GoUInt64) | (_u1 << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64) | (_u1 >> ((_n - (64u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _r1 = (_u1 >> _n : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L36"
        return { _0 : _r1, _1 : _r2 };
    }

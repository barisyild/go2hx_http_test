package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _log2(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_x), _frac:stdgo.GoFloat64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/math/log10.go#L33"
        if (_frac == ((0.5 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/log10.go#L34"
            return ((_exp - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoFloat64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/log10.go#L36"
        return ((stdgo._internal.math.Math_log.log(_frac) * (1.4426950408889634 : stdgo.GoFloat64) : stdgo.GoFloat64) + (_exp : stdgo.GoFloat64) : stdgo.GoFloat64);
    }

package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _isNegInt(_x:stdgo.GoFloat64):Bool {
        //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L217"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = stdgo._internal.math.Math_modf.modf(_x), __0:stdgo.GoFloat64 = __tmp__._0, _xf:stdgo.GoFloat64 = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L219"
            return _xf == ((0 : stdgo.GoFloat64));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/gamma.go#L221"
        return false;
    }

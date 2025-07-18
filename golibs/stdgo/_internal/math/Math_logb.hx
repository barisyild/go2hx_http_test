package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function logb(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///Users/o/.go/go1.21.3/src/math/logb.go#L16"
        if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/logb.go#L18"
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/logb.go#L20"
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        } else if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            //"file:///Users/o/.go/go1.21.3/src/math/logb.go#L22"
            return _x;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/logb.go#L24"
        return (stdgo._internal.math.Math__ilogb._ilogb(_x) : stdgo.GoFloat64);
    }

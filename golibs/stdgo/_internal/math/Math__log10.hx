package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _log10(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///Users/o/.go/go1.21.3/src/math/log10.go#L17"
        return (stdgo._internal.math.Math_log.log(_x) * (0.4342944819032518 : stdgo.GoFloat64) : stdgo.GoFloat64);
    }

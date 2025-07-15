package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function ldexp(_frac:stdgo.GoFloat64, _exp:stdgo.GoInt):stdgo.GoFloat64 {
        //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L16"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L17"
            return stdgo._internal.math.Math__archldexp._archLdexp(_frac, _exp);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L19"
        return stdgo._internal.math.Math__ldexp._ldexp(_frac, _exp);
    }

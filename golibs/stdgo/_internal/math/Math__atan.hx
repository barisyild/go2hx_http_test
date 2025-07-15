package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _atan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///Users/o/.go/go1.21.3/src/math/atan.go#L104"
        if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/atan.go#L105"
            return _x;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/atan.go#L107"
        if ((_x > (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/atan.go#L108"
            return stdgo._internal.math.Math__satan._satan(_x);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/atan.go#L110"
        return -stdgo._internal.math.Math__satan._satan(-_x);
    }

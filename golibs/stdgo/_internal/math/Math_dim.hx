package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function dim(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _v = @:assignType (_x - _y : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/dim.go#L21"
        if ((_v <= (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/dim.go#L23"
            return (0 : stdgo.GoFloat64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/dim.go#L26"
        return _v;
    }

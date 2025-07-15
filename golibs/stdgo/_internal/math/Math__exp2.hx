package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _exp2(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///Users/o/.go/go1.21.3/src/math/exp.go#L159"
        if ((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/exp.go#L161"
            return _x;
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/exp.go#L163"
            return (0 : stdgo.GoFloat64);
        } else if ((_x > (1023.9999999999999 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/exp.go#L165"
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        } else if ((_x < (-1074 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/exp.go#L167"
            return (0 : stdgo.GoFloat64);
        };
        var _k:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/exp.go#L173"
        if ((_x > (0 : stdgo.GoFloat64) : Bool)) {
            _k = ((_x + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        } else if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _k = ((_x - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        };
        var _t = @:assignType (_x - (_k : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _hi = @:assignType (_t * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _lo = @:assignType (-_t * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/exp.go#L184"
        return stdgo._internal.math.Math__expmulti._expmulti(_hi, _lo, _k);
    }

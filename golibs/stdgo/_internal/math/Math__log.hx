package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _log(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///Users/o/.go/go1.21.3/src/math/log.go#L102"
        if ((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/log.go#L104"
            return _x;
        } else if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/log.go#L106"
            return stdgo._internal.math.Math_nan.naN();
        } else if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/log.go#L108"
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        };
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_x), _f1:stdgo.GoFloat64 = __tmp__._0, _ki:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/math/log.go#L113"
        if ((_f1 < (0.7071067811865476 : stdgo.GoFloat64) : Bool)) {
            _f1 = (_f1 * ((2 : stdgo.GoFloat64)) : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/math/log.go#L115"
            _ki--;
        };
        var _f = @:assignType (_f1 - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _k = @:assignType (_ki : stdgo.GoFloat64);
        var _s = @:assignType (_f / (((2 : stdgo.GoFloat64) + _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _s2 = @:assignType (_s * _s : stdgo.GoFloat64);
        var _s4 = @:assignType (_s2 * _s2 : stdgo.GoFloat64);
        var _t1 = @:assignType (_s2 * (((0.6666666666666735 : stdgo.GoFloat64) + (_s4 * (((0.2857142874366239 : stdgo.GoFloat64) + (_s4 * (((0.1818357216161805 : stdgo.GoFloat64) + (_s4 * (0.14798198605116586 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _t2 = @:assignType (_s4 * (((0.3999999999940942 : stdgo.GoFloat64) + (_s4 * (((0.22222198432149784 : stdgo.GoFloat64) + (_s4 * (0.15313837699209373 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var r = @:assignType (_t1 + _t2 : stdgo.GoFloat64);
        var _hfsq = @:assignType (((0.5 : stdgo.GoFloat64) * _f : stdgo.GoFloat64) * _f : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/log.go#L128"
        return ((_k * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) - ((((_hfsq - (((_s * ((_hfsq + r : stdgo.GoFloat64)) : stdgo.GoFloat64) + (_k * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) - _f : stdgo.GoFloat64)) : stdgo.GoFloat64);
    }

package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _cbrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///Users/o/.go/go1.21.3/src/math/cbrt.go#L45"
        if (((_x == ((0 : stdgo.GoFloat64)) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool) || stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/cbrt.go#L47"
            return _x;
        };
        var _sign = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/math/cbrt.go#L51"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _t = @:assignType (stdgo._internal.math.Math_float64frombits.float64frombits(((stdgo._internal.math.Math_float64bits.float64bits(_x) / (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (3071306043645493248i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/cbrt.go#L58"
        if ((_x < (2.2250738585072014e-308 : stdgo.GoFloat64) : Bool)) {
            _t = (1.8014398509481984e+16 : stdgo.GoFloat64);
            _t = (_t * (_x) : stdgo.GoFloat64);
            _t = stdgo._internal.math.Math_float64frombits.float64frombits(((stdgo._internal.math.Math_float64bits.float64bits(_t) / (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (2990241250352824320i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        };
        var _r = @:assignType ((_t * _t : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
        var _s = @:assignType ((0.5428571428571428 : stdgo.GoFloat64) + (_r * _t : stdgo.GoFloat64) : stdgo.GoFloat64);
        _t = (_t * (((0.35714285714285715 : stdgo.GoFloat64) + ((1.6071428571428572 : stdgo.GoFloat64) / (((_s + (1.4142857142857144 : stdgo.GoFloat64) : stdgo.GoFloat64) + ((-0.7053061224489796 : stdgo.GoFloat64) / _s : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _t = stdgo._internal.math.Math_float64frombits.float64frombits(((stdgo._internal.math.Math_float64bits.float64bits(_t) & (-1073741824i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (1073741824i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        _s = (_t * _t : stdgo.GoFloat64);
        _r = (_x / _s : stdgo.GoFloat64);
        var _w = @:assignType (_t + _t : stdgo.GoFloat64);
        _r = (((_r - _t : stdgo.GoFloat64)) / ((_w + _r : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _t = (_t + (_t * _r : stdgo.GoFloat64) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/cbrt.go#L81"
        if (_sign) {
            _t = -_t;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/cbrt.go#L84"
        return _t;
    }

package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _ldexp(_frac:stdgo.GoFloat64, _exp:stdgo.GoInt):stdgo.GoFloat64 {
        //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L24"
        if (_frac == ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L26"
            return _frac;
        } else if ((stdgo._internal.math.Math_isinf.isInf(_frac, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_frac) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L28"
            return _frac;
        };
        var __tmp__ = stdgo._internal.math.Math__normalize._normalize(_frac), _frac:stdgo.GoFloat64 = __tmp__._0, _e:stdgo.GoInt = __tmp__._1;
        _exp = (_exp + (_e) : stdgo.GoInt);
        var _x = @:assignType (stdgo._internal.math.Math_float64bits.float64bits(_frac) : stdgo.GoUInt64);
        _exp = (_exp + (((((_x >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) & (2047 : stdgo.GoInt) : stdgo.GoInt) - (1023 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L34"
        if ((_exp < (-1075 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L35"
            return stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _frac);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L37"
        if ((_exp > (1023 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L38"
            if ((_frac < (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L39"
                return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L41"
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        };
        var _m:stdgo.GoFloat64 = (1 : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L44"
        if ((_exp < (-1022 : stdgo.GoInt) : Bool)) {
            _exp = (_exp + ((53 : stdgo.GoInt)) : stdgo.GoInt);
            _m = (1.1102230246251565e-16 : stdgo.GoFloat64);
        };
        _x = (_x & ((((9218868437227405312i64 : stdgo.GoUInt64)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _x = (_x | ((((_exp + (1023 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/ldexp.go#L50"
        return (_m * stdgo._internal.math.Math_float64frombits.float64frombits(_x) : stdgo.GoFloat64);
    }

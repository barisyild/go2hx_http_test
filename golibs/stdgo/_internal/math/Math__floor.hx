package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _floor(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///Users/o/.go/go1.21.3/src/math/floor.go#L22"
        if (((_x == ((0 : stdgo.GoFloat64)) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool) || stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/floor.go#L23"
            return _x;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/floor.go#L25"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = stdgo._internal.math.Math_modf.modf(-_x), _d:stdgo.GoFloat64 = __tmp__._0, _fract:stdgo.GoFloat64 = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/math/floor.go#L27"
            if (_fract != ((0 : stdgo.GoFloat64))) {
                _d = (_d + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/floor.go#L30"
            return -_d;
        };
        var __tmp__ = stdgo._internal.math.Math_modf.modf(_x), _d:stdgo.GoFloat64 = __tmp__._0, __0:stdgo.GoFloat64 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/math/floor.go#L33"
        return _d;
    }

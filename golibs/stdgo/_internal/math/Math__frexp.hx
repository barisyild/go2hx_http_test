package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _frexp(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _frac = (0 : stdgo.GoFloat64), _exp = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/frexp.go#L26"
        if (_f == ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/frexp.go#L28"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } = { _0 : _f, _1 : (0 : stdgo.GoInt) };
                _frac = __tmp__._0;
                _exp = __tmp__._1;
                __tmp__;
            };
        } else if ((stdgo._internal.math.Math_isinf.isInf(_f, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_f) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/frexp.go#L30"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } = { _0 : _f, _1 : (0 : stdgo.GoInt) };
                _frac = __tmp__._0;
                _exp = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = stdgo._internal.math.Math__normalize._normalize(_f);
            _f = @:tmpset0 __tmp__._0;
            _exp = @:tmpset0 __tmp__._1;
        };
        var _x = @:assignType (stdgo._internal.math.Math_float64bits.float64bits(_f) : stdgo.GoUInt64);
        _exp = (_exp + (((((((_x >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) - (1023 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        _x = (_x & ((((9218868437227405312i64 : stdgo.GoUInt64)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _x = (_x | ((4602678819172646912i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _frac = stdgo._internal.math.Math_float64frombits.float64frombits(_x);
        //"file:///Users/o/.go/go1.21.3/src/math/frexp.go#L38"
        return { _0 : _frac, _1 : _exp };
    }

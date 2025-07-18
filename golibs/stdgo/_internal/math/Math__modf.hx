package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _modf(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _int = (0 : stdgo.GoFloat64), _frac = (0 : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/modf.go#L22"
        if ((_f < (1 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/modf.go#L23"
            if ((_f < (0 : stdgo.GoFloat64) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.Math_modf.modf(-_f);
                    _int = @:tmpset0 __tmp__._0;
                    _frac = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/math/modf.go#L26"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = { _0 : -_int, _1 : -_frac };
                    _int = __tmp__._0;
                    _frac = __tmp__._1;
                    __tmp__;
                };
            } else if (_f == ((0 : stdgo.GoFloat64))) {
                //"file:///Users/o/.go/go1.21.3/src/math/modf.go#L28"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = { _0 : _f, _1 : _f };
                    _int = __tmp__._0;
                    _frac = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/math/modf.go#L30"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = { _0 : (0 : stdgo.GoFloat64), _1 : _f };
                _int = __tmp__._0;
                _frac = __tmp__._1;
                __tmp__;
            };
        };
        var _x = @:assignType (stdgo._internal.math.Math_float64bits.float64bits(_f) : stdgo.GoUInt64);
        var _e = @:assignType ((((_x >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt) & (2047u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1023u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/modf.go#L37"
        if ((_e < (52u32 : stdgo.GoUInt) : Bool)) {
            _x = (_x & ((((((1i64 : stdgo.GoUInt64) << (((52u32 : stdgo.GoUInt) - _e : stdgo.GoUInt)) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _int = stdgo._internal.math.Math_float64frombits.float64frombits(_x);
        _frac = (_f - _int : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/modf.go#L42"
        return { _0 : _int, _1 : _frac };
    }

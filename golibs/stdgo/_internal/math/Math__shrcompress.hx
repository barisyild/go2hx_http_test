package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _shrcompress(_u1:stdgo.GoUInt64, _u2:stdgo.GoUInt64, _n:stdgo.GoUInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _r1 = (0 : stdgo.GoUInt64), _r2 = (0 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L48"
        if (_n == ((0u32 : stdgo.GoUInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L50"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } = { _0 : _u1, _1 : _u2 };
                _r1 = __tmp__._0;
                _r2 = __tmp__._1;
                __tmp__;
            };
        } else if (_n == ((64u32 : stdgo.GoUInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L52"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : (_u1 | stdgo._internal.math.Math__nonzero._nonzero(_u2) : stdgo.GoUInt64) };
                _r1 = __tmp__._0;
                _r2 = __tmp__._1;
                __tmp__;
            };
        } else if ((_n >= (128u32 : stdgo.GoUInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L54"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo._internal.math.Math__nonzero._nonzero((_u1 | _u2 : stdgo.GoUInt64)) };
                _r1 = __tmp__._0;
                _r2 = __tmp__._1;
                __tmp__;
            };
        } else if ((_n < (64u32 : stdgo.GoUInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.math.Math__shr._shr(_u1, _u2, _n);
                _r1 = @:tmpset0 __tmp__._0;
                _r2 = @:tmpset0 __tmp__._1;
            };
            _r2 = (_r2 | (stdgo._internal.math.Math__nonzero._nonzero((_u2 & ((((1i64 : stdgo.GoUInt64) << _n : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64))) : stdgo.GoUInt64);
        } else if ((_n < (128u32 : stdgo.GoUInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.math.Math__shr._shr(_u1, _u2, _n);
                _r1 = @:tmpset0 __tmp__._0;
                _r2 = @:tmpset0 __tmp__._1;
            };
            _r2 = (_r2 | (stdgo._internal.math.Math__nonzero._nonzero(((_u1 & ((((1i64 : stdgo.GoUInt64) << ((_n - (64u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64) | _u2 : stdgo.GoUInt64))) : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L62"
        return { _0 : _r1, _1 : _r2 };
    }

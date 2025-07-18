package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _trigReduce(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; } {
        var _j = (0 : stdgo.GoUInt64), _z = (0 : stdgo.GoFloat64);
        {};
        //"file:///Users/o/.go/go1.21.3/src/math/trig_reduce.go#L33"
        if ((_x < (0.7853981633974483 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/trig_reduce.go#L34"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : _x };
                _j = __tmp__._0;
                _z = __tmp__._1;
                __tmp__;
            };
        };
        var _ix = @:assignType (stdgo._internal.math.Math_float64bits.float64bits(_x) : stdgo.GoUInt64);
        var _exp = @:assignType (((((_ix >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) - (1023 : stdgo.GoInt) : stdgo.GoInt) - (52 : stdgo.GoInt) : stdgo.GoInt);
        _ix = (_ix & ((((9218868437227405312i64 : stdgo.GoUInt64)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _ix = (_ix | ((4503599627370496i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var __0 = @:assignType (((_exp + (61 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) / (64u32 : stdgo.GoUInt) : stdgo.GoUInt), __1 = @:assignType (((_exp + (61 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) % (64u32 : stdgo.GoUInt) : stdgo.GoUInt);
var _bitshift = __1, _digit = __0;
        var _z0 = @:assignType (((stdgo._internal.math.Math__mpi4._mPi4[(_digit : stdgo.GoInt)] << _bitshift : stdgo.GoUInt64)) | ((stdgo._internal.math.Math__mpi4._mPi4[((_digit + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] >> (((64u32 : stdgo.GoUInt) - _bitshift : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _z1 = @:assignType (((stdgo._internal.math.Math__mpi4._mPi4[((_digit + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] << _bitshift : stdgo.GoUInt64)) | ((stdgo._internal.math.Math__mpi4._mPi4[((_digit + (2u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] >> (((64u32 : stdgo.GoUInt) - _bitshift : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _z2 = @:assignType (((stdgo._internal.math.Math__mpi4._mPi4[((_digit + (2u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] << _bitshift : stdgo.GoUInt64)) | ((stdgo._internal.math.Math__mpi4._mPi4[((_digit + (3u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] >> (((64u32 : stdgo.GoUInt) - _bitshift : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_z2, _ix), _z2hi:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_z1, _ix), _z1hi:stdgo.GoUInt64 = __tmp__._0, _z1lo:stdgo.GoUInt64 = __tmp__._1;
        var _z0lo = @:assignType (_z0 * _ix : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_z1lo, _z2hi, (0i64 : stdgo.GoUInt64)), _lo:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_z0lo, _z1hi, _c), _hi:stdgo.GoUInt64 = __tmp__._0, __1:stdgo.GoUInt64 = __tmp__._1;
        _j = (_hi >> (61i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _hi = ((_hi << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_lo >> (61i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _lz = @:assignType (stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_hi) : stdgo.GoUInt);
        var _e = @:assignType (((1023u32 : stdgo.GoUInt) - ((_lz + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt64);
        _hi = (((_hi << ((_lz + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64)) | ((_lo >> (((64u32 : stdgo.GoUInt) - ((_lz + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _hi = (_hi >> ((12i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _hi = (_hi | ((_e << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _z = stdgo._internal.math.Math_float64frombits.float64frombits(_hi);
        //"file:///Users/o/.go/go1.21.3/src/math/trig_reduce.go#L68"
        if ((_j & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/trig_reduce.go#L69"
            _j++;
            _j = (_j & ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/math/trig_reduce.go#L71"
            _z--;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/trig_reduce.go#L74"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; } = { _0 : _j, _1 : (_z * (0.7853981633974483 : stdgo.GoFloat64) : stdgo.GoFloat64) };
            _j = __tmp__._0;
            _z = __tmp__._1;
            __tmp__;
        };
    }

package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function fMA(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64, _z:stdgo.GoFloat64):stdgo.GoFloat64 {
        var __0 = @:assignType (stdgo._internal.math.Math_float64bits.float64bits(_x) : stdgo.GoUInt64), __1 = @:assignType (stdgo._internal.math.Math_float64bits.float64bits(_y) : stdgo.GoUInt64), __2 = @:assignType (stdgo._internal.math.Math_float64bits.float64bits(_z) : stdgo.GoUInt64);
var _bz = __2, _by = __1, _bx = __0;
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L99"
        if (((((_x == ((0 : stdgo.GoFloat64)) || _y == ((0 : stdgo.GoFloat64)) : Bool) || _z == ((0 : stdgo.GoFloat64)) : Bool) || (_bx & (9218868437227405312i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((9218868437227405312i64 : stdgo.GoUInt64)) : Bool) || ((_by & (9218868437227405312i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (9218868437227405312i64 : stdgo.GoUInt64)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L100"
            return ((_x * _y : stdgo.GoFloat64) + _z : stdgo.GoFloat64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L104"
        if ((_bz & (9218868437227405312i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((9218868437227405312i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L105"
            return _z;
        };
        var __tmp__ = stdgo._internal.math.Math__split._split(_bx), _xs:stdgo.GoUInt32 = __tmp__._0, _xe:stdgo.GoInt32 = __tmp__._1, _xm:stdgo.GoUInt64 = __tmp__._2;
        var __tmp__ = stdgo._internal.math.Math__split._split(_by), _ys:stdgo.GoUInt32 = __tmp__._0, _ye:stdgo.GoInt32 = __tmp__._1, _ym:stdgo.GoUInt64 = __tmp__._2;
        var __tmp__ = stdgo._internal.math.Math__split._split(_bz), _zs:stdgo.GoUInt32 = __tmp__._0, _ze:stdgo.GoInt32 = __tmp__._1, _zm:stdgo.GoUInt64 = __tmp__._2;
        var _pe = @:assignType (((_xe + _ye : stdgo.GoInt32) - (1023 : stdgo.GoInt32) : stdgo.GoInt32) + (1 : stdgo.GoInt32) : stdgo.GoInt32);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64((_xm << (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (_ym << (11i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), _pm1:stdgo.GoUInt64 = __tmp__._0, _pm2:stdgo.GoUInt64 = __tmp__._1;
        var __0 = @:assignType (_zm << (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = @:assignType ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _zm2 = __1, _zm1 = __0;
        var _ps = @:assignType (_xs ^ _ys : stdgo.GoUInt32);
        var _is62zero = @:assignType (((((-1 ^ _pm1) >> (62i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt);
        {
            var __tmp__ = stdgo._internal.math.Math__shl._shl(_pm1, _pm2, _is62zero);
            _pm1 = @:tmpset0 __tmp__._0;
            _pm2 = @:tmpset0 __tmp__._1;
        };
        _pe = (_pe - ((_is62zero : stdgo.GoInt32)) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L131"
        if (((_pe < _ze : Bool) || (_pe == (_ze) && (_pm1 < _zm1 : Bool) : Bool) : Bool)) {
            {
                final __tmp__0 = _zs;
                final __tmp__1 = _ze;
                final __tmp__2 = _zm1;
                final __tmp__3 = _zm2;
                final __tmp__4 = _ps;
                final __tmp__5 = _pe;
                final __tmp__6 = _pm1;
                final __tmp__7 = _pm2;
                _ps = @:binopAssign __tmp__0;
                _pe = @:binopAssign __tmp__1;
                _pm1 = @:binopAssign __tmp__2;
                _pm2 = @:binopAssign __tmp__3;
                _zs = @:binopAssign __tmp__4;
                _ze = @:binopAssign __tmp__5;
                _zm1 = @:binopAssign __tmp__6;
                _zm2 = @:binopAssign __tmp__7;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L136"
        if ((((_ps != (_zs) && _pe == (_ze) : Bool) && _pm1 == (_zm1) : Bool) && (_pm2 == _zm2) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L137"
            return (0 : stdgo.GoFloat64);
        };
        {
            var __tmp__ = stdgo._internal.math.Math__shrcompress._shrcompress(_zm1, _zm2, ((_pe - _ze : stdgo.GoInt32) : stdgo.GoUInt));
            _zm1 = @:tmpset0 __tmp__._0;
            _zm2 = @:tmpset0 __tmp__._1;
        };
        var _m:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _c:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L145"
        if (_ps == (_zs)) {
            {
                var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_pm2, _zm2, (0i64 : stdgo.GoUInt64));
                _pm2 = @:tmpset0 __tmp__._0;
                _c = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_pm1, _zm1, _c);
                _pm1 = @:tmpset0 __tmp__._0;
            };
            _pe = (_pe - ((((-1 ^ _pm1) >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32)) : stdgo.GoInt32);
            {
                var __tmp__ = stdgo._internal.math.Math__shrcompress._shrcompress(_pm1, _pm2, (((64i64 : stdgo.GoUInt64) + (_pm1 >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt));
                _pm1 = @:tmpset0 __tmp__._0;
                _m = @:tmpset0 __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_pm2, _zm2, (0i64 : stdgo.GoUInt64));
                _pm2 = @:tmpset0 __tmp__._0;
                _c = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_pm1, _zm1, _c);
                _pm1 = @:tmpset0 __tmp__._0;
            };
            var _nz = @:assignType (stdgo._internal.math.Math__lz._lz(_pm1, _pm2) : stdgo.GoInt32);
            _pe = (_pe - (_nz) : stdgo.GoInt32);
            {
                var __tmp__ = stdgo._internal.math.Math__shl._shl(_pm1, _pm2, ((_nz - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt));
                _m = @:tmpset0 __tmp__._0;
                _pm2 = @:tmpset0 __tmp__._1;
            };
            _m = (_m | (stdgo._internal.math.Math__nonzero._nonzero(_pm2)) : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L163"
        if (((_pe > (2045 : stdgo.GoInt32) : Bool) || (_pe == ((2045 : stdgo.GoInt32)) && (((_m + (512i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64)) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L165"
            return stdgo._internal.math.Math_float64frombits.float64frombits((((_ps : stdgo.GoUInt64) << (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (9218868437227405312i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L167"
        if ((_pe < (0 : stdgo.GoInt32) : Bool)) {
            var _n = @:assignType (-_pe : stdgo.GoUInt);
            _m = ((_m >> _n : stdgo.GoUInt64) | stdgo._internal.math.Math__nonzero._nonzero((_m & ((((1i64 : stdgo.GoUInt64) << _n : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _pe = (0 : stdgo.GoInt32);
        };
        _m = (((((_m + (512i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) >> (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (-1 ^ stdgo._internal.math.Math__zero._zero((((_m & (1023i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ (512i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) : stdgo.GoUInt64);
        _pe = (_pe & (-(stdgo._internal.math.Math__nonzero._nonzero(_m) : stdgo.GoInt32)) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/math/fma.go#L174"
        return stdgo._internal.math.Math_float64frombits.float64frombits(((((_ps : stdgo.GoUInt64) << (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + ((_pe : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) + _m : stdgo.GoUInt64));
    }

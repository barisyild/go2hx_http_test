package stdgo._internal.math.big;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.rand.Rand;
function _quotToFloat64(_a:stdgo._internal.math.big.Big_t_nat.T_nat, _b:stdgo._internal.math.big.Big_t_nat.T_nat):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat64), _exact = false;
        {};
        var _alen = @:assignType (_a._bitLen() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L194"
        if (_alen == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L195"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : true };
                _f = __tmp__._0;
                _exact = __tmp__._1;
                __tmp__;
            };
        };
        var _blen = @:assignType (_b._bitLen() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L198"
        if (_blen == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L199"
            throw new stdgo.AnyInterface(("division by zero" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _exp = @:assignType (_alen - _blen : stdgo.GoInt);
        var _a2:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _b2:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _a2 = _a2._set(_a);
        _b2 = _b2._set(_b);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L212"
        {
            var _shift = @:assignType ((54 : stdgo.GoInt) - _exp : stdgo.GoInt);
            if ((_shift > (0 : stdgo.GoInt) : Bool)) {
                _a2 = _a2._shl(_a2, (_shift : stdgo.GoUInt));
            } else if ((_shift < (0 : stdgo.GoInt) : Bool)) {
                _b2 = _b2._shl(_b2, (-_shift : stdgo.GoUInt));
            };
        };
        var _q:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var __tmp__ = _q._div(_a2, _a2, _b2), _q:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._1;
        var _mantissa = @:assignType (stdgo._internal.math.big.Big__low64._low64(_q) : stdgo.GoUInt64);
        var _haveRem = @:assignType ((_r.length) > (0 : stdgo.GoInt) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L228"
        if ((_mantissa >> (54i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L229"
            if ((_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64))) {
                _haveRem = true;
            };
            _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L233"
            _exp++;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L235"
        if ((_mantissa >> (53i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((1i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L236"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("expected exactly %d bits of result" : stdgo.GoString), new stdgo.AnyInterface((54 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L240"
        if ((((-1074 : stdgo.GoInt) <= _exp : Bool) && (_exp <= (-1022 : stdgo.GoInt) : Bool) : Bool)) {
            var _shift = @:assignType (((-1022 : stdgo.GoInt) - ((_exp - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt);
            var _lostbits = @:assignType (_mantissa & ((((1i64 : stdgo.GoUInt64) << _shift : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _haveRem = (_haveRem || (_lostbits != (0i64 : stdgo.GoUInt64)) : Bool);
            _mantissa = (_mantissa >> (_shift) : stdgo.GoUInt64);
            _exp = (-1021 : stdgo.GoInt);
        };
        _exact = !_haveRem;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L250"
        if ((_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _exact = false;
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L252"
            if ((_haveRem || ((_mantissa & (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (0i64 : stdgo.GoUInt64)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L253"
                {
                    _mantissa++;
                    if ((_mantissa >= (18014398509481984i64 : stdgo.GoUInt64) : Bool)) {
                        _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L256"
                        _exp++;
                    };
                };
            };
        };
        _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _f = stdgo._internal.math.Math_ldexp.ldexp((_mantissa : stdgo.GoFloat64), (_exp - (53 : stdgo.GoInt) : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L263"
        if (stdgo._internal.math.Math_isinf.isInf(_f, (0 : stdgo.GoInt))) {
            _exact = false;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L266"
        return { _0 : _f, _1 : _exact };
    }

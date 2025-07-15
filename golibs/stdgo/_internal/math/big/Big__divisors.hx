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
function _divisors(_m:stdgo.GoInt, _b:stdgo._internal.math.big.Big_word.Word, _ndigits:stdgo.GoInt, _bb:stdgo._internal.math.big.Big_word.Word):stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor> {
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L461"
        if (((stdgo._internal.math.big.Big__leafsize._leafSize == (0 : stdgo.GoInt)) || (_m <= stdgo._internal.math.big.Big__leafsize._leafSize : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L462"
            return (null : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>);
        };
        var _k = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L467"
        {
            var _words = @:assignType (stdgo._internal.math.big.Big__leafsize._leafSize : stdgo.GoInt);
            while (((_words < (_m >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : Bool) && (_k < (stdgo._internal.math.big.Big__cachebase10._cacheBase10._table.length) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L468"
                _k++;
                _words = (_words << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
        var _table:stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor> = (null : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L473"
        if (_b == ((10u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L474"
            stdgo._internal.math.big.Big__cachebase10._cacheBase10.lock();
            _table = (stdgo._internal.math.big.Big__cachebase10._cacheBase10._table.__slice__((0 : stdgo.GoInt), _k) : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>);
        } else {
            _table = (new stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>((_k : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_k : stdgo.GoInt).toBasic() > 0 ? (_k : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math.big.Big_t_divisor.T_divisor)]) : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L481"
        if (_table[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)]._ndigits == ((0 : stdgo.GoInt))) {
            var _larger:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L484"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _k : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L485"
                    if (_table[(_i : stdgo.GoInt)]._ndigits == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L486"
                        if (_i == ((0 : stdgo.GoInt))) {
                            _table[(0 : stdgo.GoInt)]._bbb = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expWW(_bb, (stdgo._internal.math.big.Big__leafsize._leafSize : stdgo._internal.math.big.Big_word.Word));
                            _table[(0 : stdgo.GoInt)]._ndigits = (_ndigits * stdgo._internal.math.big.Big__leafsize._leafSize : stdgo.GoInt);
                        } else {
                            _table[(_i : stdgo.GoInt)]._bbb = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sqr(_table[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]._bbb);
                            _table[(_i : stdgo.GoInt)]._ndigits = ((2 : stdgo.GoInt) * _table[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]._ndigits : stdgo.GoInt);
                        };
                        _larger = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._set(_table[(_i : stdgo.GoInt)]._bbb);
                        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L496"
                        while (stdgo._internal.math.big.Big__muladdvww._mulAddVWW(_larger, _larger, _b, (0u32 : stdgo._internal.math.big.Big_word.Word)) == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                            _table[(_i : stdgo.GoInt)]._bbb = _table[(_i : stdgo.GoInt)]._bbb._set(_larger);
                            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L498"
                            _table[(_i : stdgo.GoInt)]._ndigits++;
                        };
                        _table[(_i : stdgo.GoInt)]._nbits = _table[(_i : stdgo.GoInt)]._bbb._bitLen();
                    };
                    _i++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L506"
        if (_b == ((10u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L507"
            stdgo._internal.math.big.Big__cachebase10._cacheBase10.unlock();
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L510"
        return _table;
    }

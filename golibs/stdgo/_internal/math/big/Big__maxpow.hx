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
function _maxPow(_b:stdgo._internal.math.big.Big_word.Word):{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo.GoInt; } {
        var _p = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _n = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _b;
            final __tmp__1 = (1 : stdgo.GoInt);
            _p = @:binopAssign __tmp__0;
            _n = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L33"
        {
            var _max = @:assignType ((-1u32 : stdgo._internal.math.big.Big_word.Word) / _b : stdgo._internal.math.big.Big_word.Word);
            while ((_p <= _max : Bool)) {
                _p = (_p * (_b) : stdgo._internal.math.big.Big_word.Word);
                //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L36"
                _n++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L39"
        return { _0 : _p, _1 : _n };
    }

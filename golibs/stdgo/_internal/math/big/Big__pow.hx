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
function _pow(_x:stdgo._internal.math.big.Big_word.Word, _n:stdgo.GoInt):stdgo._internal.math.big.Big_word.Word {
        var _p = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        _p = (1u32 : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L48"
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L49"
            if ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                _p = (_p * (_x) : stdgo._internal.math.big.Big_word.Word);
            };
            _x = (_x * (_x) : stdgo._internal.math.big.Big_word.Word);
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natconv.go#L55"
        return _p;
    }

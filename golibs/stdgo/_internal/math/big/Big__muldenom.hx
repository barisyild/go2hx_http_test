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
function _mulDenom(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L457"
        if (((_x.length == (0 : stdgo.GoInt)) && (_y.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L459"
            return _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        } else if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L461"
            return _z._set(_y);
        } else if ((_y.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L463"
            return _z._set(_x);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L465"
        return _z._mul(_x, _y);
    }

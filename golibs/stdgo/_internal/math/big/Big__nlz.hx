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
function _nlz(_x:stdgo._internal.math.big.Big_word.Word):stdgo.GoUInt {
        //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L60"
        return (stdgo._internal.math.bits.Bits_leadingzeros.leadingZeros((_x : stdgo.GoUInt)) : stdgo.GoUInt);
    }

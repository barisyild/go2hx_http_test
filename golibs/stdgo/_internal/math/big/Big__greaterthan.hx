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
function _greaterThan(_x1:stdgo._internal.math.big.Big_word.Word, _x2:stdgo._internal.math.big.Big_word.Word, _y1:stdgo._internal.math.big.Big_word.Word, _y2:stdgo._internal.math.big.Big_word.Word):Bool {
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L717"
        return ((_x1 > _y1 : Bool) || (_x1 == (_y1) && (_x2 > _y2 : Bool) : Bool) : Bool);
    }

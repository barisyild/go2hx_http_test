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
function _makeAcc(_above:Bool):stdgo._internal.math.big.Big_accuracy.Accuracy {
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L191"
        if (_above) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L192"
            return (1 : stdgo._internal.math.big.Big_accuracy.Accuracy);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L194"
        return (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy);
    }

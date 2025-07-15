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
function _umax32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32 {
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L1732"
        if ((_x > _y : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L1733"
            return _x;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L1735"
        return _y;
    }

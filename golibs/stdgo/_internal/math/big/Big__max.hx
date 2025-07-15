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
function _max(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L393"
        if ((_x > _y : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L394"
            return _x;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L396"
        return _y;
    }

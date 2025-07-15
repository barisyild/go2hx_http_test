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
function _min(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L448"
        if ((_x < _y : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L449"
            return _x;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ftoa.go#L451"
        return _y;
    }

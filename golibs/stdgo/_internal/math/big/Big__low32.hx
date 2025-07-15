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
function _low32(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt32 {
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L405"
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L406"
            return (0u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L408"
        return (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt32);
    }

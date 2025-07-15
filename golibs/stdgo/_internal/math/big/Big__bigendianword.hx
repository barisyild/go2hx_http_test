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
function _bigEndianWord(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.math.big.Big_word.Word {
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1336"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1337"
            return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_buf) : stdgo._internal.math.big.Big_word.Word);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L1339"
        return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_buf) : stdgo._internal.math.big.Big_word.Word);
    }

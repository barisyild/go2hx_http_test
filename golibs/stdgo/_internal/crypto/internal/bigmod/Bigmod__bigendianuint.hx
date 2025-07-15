package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _bigEndianUint(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L184"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L185"
            return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_buf) : stdgo.GoUInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L187"
        return (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_buf) : stdgo.GoUInt);
    }

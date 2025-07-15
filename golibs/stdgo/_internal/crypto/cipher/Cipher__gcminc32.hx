package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function _gcmInc32(_counterBlock:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        var _ctr = (_counterBlock.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L350"
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(_ctr, (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_ctr) + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
    }

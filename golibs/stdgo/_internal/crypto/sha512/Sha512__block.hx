package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
function _block(_dig:stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512block_generic.go#L10"
        stdgo._internal.crypto.sha512.Sha512__blockgeneric._blockGeneric(_dig, _p);
    }

package stdgo._internal.crypto.sha256;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
function _block(_dig:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256block_generic.go#L10"
        stdgo._internal.crypto.sha256.Sha256__blockgeneric._blockGeneric(_dig, _p);
    }

package stdgo._internal.crypto.sha1;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
function _block(_dig:stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha1/sha1block_generic.go#L10"
        stdgo._internal.crypto.sha1.Sha1__blockgeneric._blockGeneric(_dig, _p);
    }

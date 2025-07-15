package stdgo._internal.crypto.sha256;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
function new_():stdgo._internal.hash.Hash_hash.Hash {
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L151"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L152"
            return stdgo._internal.crypto.internal.boring.Boring_newsha256.newSHA256();
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotsha256dotsha256_t_digestdott_digest.__type__stdgodot_internaldotcryptodotsha256dotSha256_t_digestdotT_digest })) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L155"
        _d.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L156"
        return stdgo.Go.asInterface(_d, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotsha256dotsha256_t_digestdott_digest.__type__stdgodot_internaldotcryptodotsha256dotSha256_t_digestdotT_digest }));
    }

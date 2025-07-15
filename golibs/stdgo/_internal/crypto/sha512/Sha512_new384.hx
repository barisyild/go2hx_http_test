package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
function new384():stdgo._internal.hash.Hash_hash.Hash {
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L233"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L234"
            return stdgo._internal.crypto.internal.boring.Boring_newsha384.newSHA384();
        };
        var _d = (stdgo.Go.setRef(({ _function : (6u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotsha512dotsha512_t_digestdott_digest.__type__stdgodot_internaldotcryptodotsha512dotSha512_t_digestdotT_digest })) : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L237"
        _d.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L238"
        return stdgo.Go.asInterface(_d, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotsha512dotsha512_t_digestdott_digest.__type__stdgodot_internaldotcryptodotsha512dotSha512_t_digestdotT_digest }));
    }

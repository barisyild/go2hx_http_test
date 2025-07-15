package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.ed25519.Ed25519.Options_asInterface) class Options_static_extension {
    @:keep
    @:tdfield
    static public function hashFunc( _o:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>):stdgo._internal.crypto.Crypto_hash.Hash {
        @:recv var _o:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options> = _o;
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L131"
        return (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hash;
    }
}

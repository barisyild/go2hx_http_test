package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.ed25519.Ed25519.PublicKey_asInterface) class PublicKey_static_extension {
    @:keep
    @:tdfield
    static public function equal( _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        @:recv var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = _pub;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_x, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _1 : true };
        } catch(__exception__) {
            { _0 : (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L47"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L48"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L50"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_pub, _xx) == ((1 : stdgo.GoInt));
    }
}

package _internal.golangdotorg.x.crypto.chacha20;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
function newUnauthenticatedCipher(_key:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher>; var _1 : stdgo.Error; } {
        var _c = (stdgo.Go.setRef((new _internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher() : _internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotchacha20dotchacha20_cipherdotcipher.__type___internaldotgolangdotorgdotxdotcryptodotchacha20dotChacha20_cipherdotCipher })) : stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L77"
        return _internal.golangdotorg.x.crypto.chacha20.Chacha20__newunauthenticatedcipher._newUnauthenticatedCipher(_c, _key, _nonce);
    }

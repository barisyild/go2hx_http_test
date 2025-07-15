package _internal.golangdotorg.x.crypto.chacha20poly1305;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
import _internal.golangdotorg.x.crypto.chacha20.Chacha20;
import _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305;
function new_(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L41"
        if ((_key.length) != ((32 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L42"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("chacha20poly1305: bad key length" : stdgo.GoString)) };
        };
        var _ret = (stdgo.Go.setRef(({} : _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotchacha20poly1305_t_chacha20poly1305dott_chacha20poly1305.__type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotChacha20poly1305_t_chacha20poly1305dotT_chacha20poly1305 })) : stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L45"
        ((@:checkr _ret ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_key);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L46"
        return { _0 : stdgo.Go.asInterface(_ret, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotchacha20poly1305_t_chacha20poly1305dott_chacha20poly1305.__type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotChacha20poly1305_t_chacha20poly1305dotT_chacha20poly1305 })), _1 : (null : stdgo.Error) };
    }

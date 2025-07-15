package _internal.golangdotorg.x.crypto.chacha20poly1305;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
import _internal.golangdotorg.x.crypto.chacha20.Chacha20;
import _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305;
function newX(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L25"
        if ((_key.length) != ((32 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L26"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("chacha20poly1305: bad key length" : stdgo.GoString)) };
        };
        var _ret = (stdgo.Go.setRef(({} : _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305.T_xchacha20poly1305), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotchacha20poly1305_t_xchacha20poly1305dott_xchacha20poly1305.__type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotChacha20poly1305_t_xchacha20poly1305dotT_xchacha20poly1305 })) : stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305.T_xchacha20poly1305>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L29"
        ((@:checkr _ret ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_key);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L30"
        return { _0 : stdgo.Go.asInterface(_ret, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotchacha20poly1305_t_xchacha20poly1305dott_xchacha20poly1305.__type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotChacha20poly1305_t_xchacha20poly1305dotT_xchacha20poly1305 })), _1 : (null : stdgo.Error) };
    }

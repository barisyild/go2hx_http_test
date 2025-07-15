package _internal.golangdotorg.x.crypto.chacha20poly1305;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
import _internal.golangdotorg.x.crypto.chacha20.Chacha20;
import _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305;
@:keep @:allow(_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305.T_xchacha20poly1305_asInterface) class T_xchacha20poly1305_static_extension {
    @:keep
    @:tdfield
    static public function open( _x:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305.T_xchacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305.T_xchacha20poly1305> = _x;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L67"
        if ((_nonce.length) != ((24 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L68"
            throw new stdgo.AnyInterface(("chacha20poly1305: bad nonce length passed to Open" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L70"
        if (((_ciphertext.length) < (16 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L71"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__erropen._errOpen };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L73"
        if (((_ciphertext.length : stdgo.GoUInt64) > (274877906896i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L74"
            throw new stdgo.AnyInterface(("chacha20poly1305: ciphertext too large" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _c = (stdgo.Go.setRef(({} : _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotchacha20poly1305_t_chacha20poly1305dott_chacha20poly1305.__type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotChacha20poly1305_t_chacha20poly1305dotT_chacha20poly1305 })) : stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>);
        var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20_hchacha20.hChaCha20(((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_nonce.__slice__((0 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _hKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L79"
        ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_hKey);
        var _cNonce = (new stdgo.Slice<stdgo.GoUInt8>((12 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L83"
        (_cNonce.__slice__((4 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_nonce.__slice__((16 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L85"
        return _c._open(_dst, (_cNonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _ciphertext, _additionalData);
    }
    @:keep
    @:tdfield
    static public function seal( _x:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305.T_xchacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305.T_xchacha20poly1305> = _x;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L42"
        if ((_nonce.length) != ((24 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L43"
            throw new stdgo.AnyInterface(("chacha20poly1305: bad nonce length passed to Seal" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L51"
        if (((_plaintext.length : stdgo.GoUInt64) > (274877906880i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L52"
            throw new stdgo.AnyInterface(("chacha20poly1305: plaintext too large" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _c = (stdgo.Go.setRef(({} : _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotchacha20poly1305_t_chacha20poly1305dott_chacha20poly1305.__type___internaldotgolangdotorgdotxdotcryptodotchacha20poly1305dotChacha20poly1305_t_chacha20poly1305dotT_chacha20poly1305 })) : stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>);
        var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20_hchacha20.hChaCha20(((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_nonce.__slice__((0 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _hKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L57"
        ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_hKey);
        var _cNonce = (new stdgo.Slice<stdgo.GoUInt8>((12 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L61"
        (_cNonce.__slice__((4 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_nonce.__slice__((16 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L63"
        return _c._seal(_dst, (_cNonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _plaintext, _additionalData);
    }
    @:keep
    @:tdfield
    static public function overhead( _:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305.T_xchacha20poly1305>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305.T_xchacha20poly1305> = _;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L38"
        return (16 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function nonceSize( _:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305.T_xchacha20poly1305>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305.T_xchacha20poly1305> = _;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/xchacha20poly1305.go#L34"
        return (24 : stdgo.GoInt);
    }
}

package _internal.golangdotorg.x.crypto.chacha20poly1305;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
import _internal.golangdotorg.x.crypto.chacha20.Chacha20;
import _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305;
@:keep @:allow(_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305.T_chacha20poly1305_asInterface) class T_chacha20poly1305_static_extension {
    @:keep
    @:tdfield
    static public function _open( _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305> = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_noasm.go#L15"
        return _c._openGeneric(_dst, _nonce, _ciphertext, _additionalData);
    }
    @:keep
    @:tdfield
    static public function _seal( _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305> = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_noasm.go#L11"
        return _c._sealGeneric(_dst, _nonce, _plaintext, _additionalData);
    }
    @:keep
    @:tdfield
    static public function _openGeneric( _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305> = _c;
        var _tag = (_ciphertext.__slice__(((_ciphertext.length) - (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _ciphertext = (_ciphertext.__slice__(0, ((_ciphertext.length) - (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _polyKey:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20_newunauthenticatedcipher.newUnauthenticatedCipher(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nonce), _s:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L59"
        _s.xORKeyStream((_polyKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_polyKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L60"
        _s.setCounter((1u32 : stdgo.GoUInt32));
        var _p = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_new_.new_((stdgo.Go.setRef(_polyKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L63"
        _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__writewithpadding._writeWithPadding(_p, _additionalData);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L64"
        _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__writewithpadding._writeWithPadding(_p, _ciphertext);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L65"
        _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__writeuint64._writeUint64(_p, (_additionalData.length));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L66"
        _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__writeuint64._writeUint64(_p, (_ciphertext.length));
        var __tmp__ = _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__sliceforappend._sliceForAppend(_dst, (_ciphertext.length)), _ret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L69"
        if (_internal.golangdotorg.x.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap(_out, _ciphertext)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L70"
            throw new stdgo.AnyInterface(("chacha20poly1305: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L72"
        if (!_p.verify(_tag)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L73"
            if (_out != null) for (_i => _ in _out) {
                _out[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L76"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__erropen._errOpen };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L79"
        _s.xORKeyStream(_out, _ciphertext);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L80"
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _sealGeneric( _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305> = _c;
        var __tmp__ = _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__sliceforappend._sliceForAppend(_dst, ((_plaintext.length) + (16 : stdgo.GoInt) : stdgo.GoInt)), _ret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        var __0 = (_out.__slice__(0, (_plaintext.length)) : stdgo.Slice<stdgo.GoUInt8>), __1 = (_out.__slice__((_plaintext.length)) : stdgo.Slice<stdgo.GoUInt8>);
var _tag = __1, _ciphertext = __0;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L33"
        if (_internal.golangdotorg.x.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap(_out, _plaintext)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L34"
            throw new stdgo.AnyInterface(("chacha20poly1305: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _polyKey:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20_newunauthenticatedcipher.newUnauthenticatedCipher(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nonce), _s:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L39"
        _s.xORKeyStream((_polyKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_polyKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L40"
        _s.setCounter((1u32 : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L41"
        _s.xORKeyStream(_ciphertext, _plaintext);
        var _p = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_new_.new_((stdgo.Go.setRef(_polyKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L44"
        _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__writewithpadding._writeWithPadding(_p, _additionalData);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L45"
        _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__writewithpadding._writeWithPadding(_p, _ciphertext);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L46"
        _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__writeuint64._writeUint64(_p, (_additionalData.length));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L47"
        _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__writeuint64._writeUint64(_p, (_plaintext.length));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L48"
        _p.sum((_tag.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L50"
        return _ret;
    }
    @:keep
    @:tdfield
    static public function open( _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305> = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L72"
        if ((_nonce.length) != ((12 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L73"
            throw new stdgo.AnyInterface(("chacha20poly1305: bad nonce length passed to Open" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L75"
        if (((_ciphertext.length) < (16 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L76"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305__erropen._errOpen };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L78"
        if (((_ciphertext.length : stdgo.GoUInt64) > (274877906896i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L79"
            throw new stdgo.AnyInterface(("chacha20poly1305: ciphertext too large" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L82"
        return _c._open(_dst, _nonce, _ciphertext, _additionalData);
    }
    @:keep
    @:tdfield
    static public function seal( _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305> = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L58"
        if ((_nonce.length) != ((12 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L59"
            throw new stdgo.AnyInterface(("chacha20poly1305: bad nonce length passed to Seal" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L62"
        if (((_plaintext.length : stdgo.GoUInt64) > (274877906880i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L63"
            throw new stdgo.AnyInterface(("chacha20poly1305: plaintext too large" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L66"
        return _c._seal(_dst, _nonce, _plaintext, _additionalData);
    }
    @:keep
    @:tdfield
    static public function overhead( _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305> = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L54"
        return (16 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function nonceSize( _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305.T_chacha20poly1305> = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L50"
        return (12 : stdgo.GoInt);
    }
}

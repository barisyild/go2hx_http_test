package _internal.golangdotorg.x.crypto.chacha20poly1305;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
import _internal.golangdotorg.x.crypto.chacha20.Chacha20;
import _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305;
class T_xchacha20poly1305_asInterface {
    @:keep
    public dynamic function open(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.open(_dst, _nonce, _ciphertext, _additionalData);
    @:keep
    public dynamic function seal(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.seal(_dst, _nonce, _plaintext, _additionalData);
    @:keep
    public dynamic function overhead():stdgo.GoInt return @:_0 __self__.value.overhead();
    @:keep
    public dynamic function nonceSize():stdgo.GoInt return @:_0 __self__.value.nonceSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_xchacha20poly1305pointer.T_xchacha20poly1305Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

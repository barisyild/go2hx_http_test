package _internal.golangdotorg.x.crypto.chacha20;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
class Cipher_asInterface {
    @:keep
    public dynamic function _xorKeyStreamBlocks(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._xorKeyStreamBlocks(_dst, _src);
    @:keep
    public dynamic function _xorKeyStreamBlocksGeneric(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._xorKeyStreamBlocksGeneric(_dst, _src);
    @:keep
    public dynamic function xORKeyStream(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.xORKeyStream(_dst, _src);
    @:keep
    public dynamic function setCounter(_counter:stdgo.GoUInt32):Void @:_0 __self__.value.setCounter(_counter);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.crypto.chacha20.Chacha20_cipherpointer.CipherPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package stdgo._internal.crypto.hmac;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
class T_hmac_asInterface {
    @:keep
    public dynamic function reset():Void @:_0 __self__.value.reset();
    @:keep
    public dynamic function blockSize():stdgo.GoInt return @:_0 __self__.value.blockSize();
    @:keep
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    @:keep
    public dynamic function sum(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.sum(_in);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.hmac.Hmac_t_hmacpointer.T_hmacPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

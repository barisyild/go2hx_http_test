package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
class MAC_asInterface {
    @:keep
    public dynamic function verify(_expected:stdgo.Slice<stdgo.GoUInt8>):Bool return @:_0 __self__.value.verify(_expected);
    @:keep
    public dynamic function sum(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.sum(_b);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    @:keep
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_macpointer.MACPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

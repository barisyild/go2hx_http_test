package _internal.runtime.internal.atomic_;
class Uint8_asInterface {
    @:keep
    public dynamic function or(_value:stdgo.GoUInt8):Void @:_0 __self__.value.or(_value);
    @:keep
    public dynamic function and(_value:stdgo.GoUInt8):Void @:_0 __self__.value.and(_value);
    @:keep
    public dynamic function store(_value:stdgo.GoUInt8):Void @:_0 __self__.value.store(_value);
    @:keep
    public dynamic function load():stdgo.GoUInt8 return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.runtime.internal.atomic_.Atomic__uint8pointer.Uint8Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

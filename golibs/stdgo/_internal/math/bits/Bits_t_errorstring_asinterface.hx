package stdgo._internal.math.bits;
class T_errorString_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    @:keep
    public dynamic function runtimeError():Void @:_0 __self__.value.runtimeError();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.bits.Bits_t_errorstringpointer.T_errorStringPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package stdgo._internal.runtime;
class T_errorAddressString_asInterface {
    @:keep
    public dynamic function addr():stdgo.GoUIntptr return @:_0 __self__.value.addr();
    @:keep
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    @:keep
    public dynamic function runtimeError():Void @:_0 __self__.value.runtimeError();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_t_erroraddressstringpointer.T_errorAddressStringPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

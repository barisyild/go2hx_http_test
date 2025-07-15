package _internal.runtime.internal.atomic_;
class T_noCopy_asInterface {
    @:keep
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:keep
    public dynamic function lock():Void @:_0 __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.runtime.internal.atomic_.Atomic__t_nocopypointer.T_noCopyPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

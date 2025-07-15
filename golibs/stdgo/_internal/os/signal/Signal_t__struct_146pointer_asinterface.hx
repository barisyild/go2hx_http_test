package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
class T__struct_146Pointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.signal.Signal_t__struct_146pointerpointer.T__struct_146PointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
class T_digestPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.hash.crc32.Crc32_t_digestpointerpointer.T_digestPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

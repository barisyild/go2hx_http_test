package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
class T_lazybufPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.path.Path_t_lazybufpointerpointer.T_lazybufPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

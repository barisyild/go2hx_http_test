package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
class Value_asInterface {
    @:keep
    public dynamic function get():stdgo.AnyInterface return @:_0 __self__.value.get();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.intern.Intern_valuepointer.ValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

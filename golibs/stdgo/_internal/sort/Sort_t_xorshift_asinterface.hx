package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
class T_xorshift_asInterface {
    @:keep
    @:pointer
    public dynamic function next():stdgo.GoUInt64 return @:_0 __self__.next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sort.Sort_t_xorshiftpointer.T_xorshiftPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

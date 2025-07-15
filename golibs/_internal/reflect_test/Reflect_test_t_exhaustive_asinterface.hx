package _internal.reflect_test;
class T_exhaustive_asInterface {
    @:keep
    public dynamic function maybe():Bool return @:_0 __self__.value.maybe();
    @:keep
    public dynamic function choose(_max:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.choose(_max);
    @:keep
    public dynamic function next():Bool return @:_0 __self__.value.next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.reflect_test.Reflect_test_t_exhaustivepointer.T_exhaustivePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

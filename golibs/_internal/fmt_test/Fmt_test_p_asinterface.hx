package _internal.fmt_test;
class P_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return @:_0 __self__.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.fmt_test.Fmt_test_ppointer.PPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

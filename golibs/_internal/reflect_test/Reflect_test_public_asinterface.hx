package _internal.reflect_test;
class Public_asInterface {
    @:keep
    public dynamic function m():Void @:_0 __self__.value.m();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function p():Void @:_0 __self__.value.p();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.reflect_test.Reflect_test_publicpointer.PublicPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

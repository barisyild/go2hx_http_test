package _internal.reflect_test;
class SettablePointer_asInterface {
    @:keep
    public dynamic function set(_v:stdgo.GoInt):Void @:_0 __self__.value.set(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.reflect_test.Reflect_test_settablepointerpointer.SettablePointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

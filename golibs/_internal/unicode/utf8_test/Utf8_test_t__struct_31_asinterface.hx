package _internal.unicode.utf8_test;
class T__struct_31_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.unicode.utf8_test.Utf8_test_t__struct_31pointer.T__struct_31Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package _internal.fmt_test;
class T__struct_29PointerPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.fmt_test.Fmt_test_t__struct_29pointerpointerpointer.T__struct_29PointerPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package _internal.unicode_test;
class T_caseT_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.unicode_test.Unicode_test_t_casetpointer.T_caseTPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package _internal.reflect_test;
class T_testIssue22031___localname___t2_200386_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.reflect_test.Reflect_test_t_testissue22031___localname___t2_200386pointer.T_testIssue22031___localname___t2_200386Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

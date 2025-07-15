package _internal.reflect_test;
class T_testPtrToGC___localname___T_82765_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.reflect_test.Reflect_test_t_testptrtogc___localname___t_82765pointer.T_testPtrToGC___localname___T_82765Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

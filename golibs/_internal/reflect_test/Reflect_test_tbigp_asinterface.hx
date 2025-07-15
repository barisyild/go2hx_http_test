package _internal.reflect_test;
class Tbigp_asInterface {
    @:keep
    public dynamic function m(_x:stdgo.GoInt, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } return @:_0 __self__.value.m(_x, _b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.reflect_test.Reflect_test_tbigppointer.TbigpPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package _internal.reflect_test;
class Tm3_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function m(_0:stdgo.GoInt, _1:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } return @:_0 __self__.value.m(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.reflect_test.Reflect_test_tm3pointer.Tm3Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

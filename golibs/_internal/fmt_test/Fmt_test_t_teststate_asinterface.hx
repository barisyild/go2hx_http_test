package _internal.fmt_test;
class T_testState_asInterface {
    @:keep
    public dynamic function flag(_c:stdgo.GoInt):Bool return @:_0 __self__.value.flag(_c);
    @:keep
    public dynamic function precision():{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value.precision();
    @:keep
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value.width();
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.fmt_test.Fmt_test_t_teststatepointer.T_testStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

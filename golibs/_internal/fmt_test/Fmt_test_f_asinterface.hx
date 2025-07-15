package _internal.fmt_test;
class F_asInterface {
    @:keep
    public dynamic function format(_s:stdgo._internal.fmt.Fmt_state.State, _c:stdgo.GoInt32):Void @:_0 __self__.value.format(_s, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.fmt_test.Fmt_test_fpointer.FPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package _internal.fmt_test;
class T_byteFormatter_asInterface {
    @:keep
    public dynamic function format(_f:stdgo._internal.fmt.Fmt_state.State, __2:stdgo.GoInt32):Void @:_0 __self__.value.format(_f, __2);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.fmt_test.Fmt_test_t_byteformatterpointer.T_byteFormatterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

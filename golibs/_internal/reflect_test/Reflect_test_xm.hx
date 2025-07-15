package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_xm_static_extension.XM_static_extension) @:using(_internal.reflect_test.Reflect_test_xm_static_extension.XM_static_extension) class XM {
    @:optional
    public var __0 : Bool = false;
    public function new(?__0:Bool) {
        if (__0 != null) this.__0 = __0;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new XM(__0);
    }
}

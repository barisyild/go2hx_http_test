package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testsetpanic___localname___t0_94541_static_extension.T_testSetPanic___localname___t0_94541_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testsetpanic___localname___t0_94541_static_extension.T_testSetPanic___localname___t0_94541_static_extension) class T_testSetPanic___localname___t0_94541 {
    public var w : stdgo.GoInt = 0;
    public function new(?w:stdgo.GoInt) {
        if (w != null) this.w = w;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "w", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testSetPanic___localname___t0_94541(w);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s4_static_extension.S4_static_extension) @:using(_internal.reflect_test.Reflect_test_s4_static_extension.S4_static_extension) class S4 {
    @:embedded
    public var s4 : stdgo.Ref<_internal.reflect_test.Reflect_test_s4.S4> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_s4.S4>);
    public var a : stdgo.GoInt = 0;
    public function new(?s4:stdgo.Ref<_internal.reflect_test.Reflect_test_s4.S4>, ?a:stdgo.GoInt) {
        if (s4 != null) this.s4 = s4;
        if (a != null) this.a = a;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s4", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s4dots4.__type___internaldotreflect_testdotReflect_test_s4dotS4 }) }, optional : false }, { name : "a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new S4(s4, a);
    }
}

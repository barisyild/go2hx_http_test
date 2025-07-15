package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s2_static_extension.S2_static_extension) @:using(_internal.reflect_test.Reflect_test_s2_static_extension.S2_static_extension) class S2 {
    public var a : stdgo.GoInt = 0;
    @:embedded
    public var s1 : stdgo.Ref<_internal.reflect_test.Reflect_test_s1.S1> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_s1.S1>);
    public function new(?a:stdgo.GoInt, ?s1:stdgo.Ref<_internal.reflect_test.Reflect_test_s1.S1>) {
        if (a != null) this.a = a;
        if (s1 != null) this.s1 = s1;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "s1", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s1dots1.__type___internaldotreflect_testdotReflect_test_s1dotS1 }) }, optional : false }])));
    public function __copy__() {
        return new S2(a, s1);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s0_static_extension.S0_static_extension) @:using(_internal.reflect_test.Reflect_test_s0_static_extension.S0_static_extension) class S0 {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoInt = 0;
    public var c : stdgo.GoInt = 0;
    @:embedded
    public var d1 : _internal.reflect_test.Reflect_test_d1.D1 = ({} : _internal.reflect_test.Reflect_test_d1.D1);
    @:embedded
    public var d2 : _internal.reflect_test.Reflect_test_d2.D2 = ({} : _internal.reflect_test.Reflect_test_d2.D2);
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoInt, ?c:stdgo.GoInt, ?d1:_internal.reflect_test.Reflect_test_d1.D1, ?d2:_internal.reflect_test.Reflect_test_d2.D2) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d1 != null) this.d1 = d1;
        if (d2 != null) this.d2 = d2;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "d1", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_d1dotd1.__type___internaldotreflect_testdotReflect_test_d1dotD1 }, optional : false }, { name : "d2", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_d2dotd2.__type___internaldotreflect_testdotReflect_test_d2dotD2 }, optional : false }])));
    public function __copy__() {
        return new S0(a, b, c, d1, d2);
    }
}

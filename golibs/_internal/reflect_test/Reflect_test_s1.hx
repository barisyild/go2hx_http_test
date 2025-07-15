package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s1_static_extension.S1_static_extension) @:using(_internal.reflect_test.Reflect_test_s1_static_extension.S1_static_extension) class S1 {
    public var b : stdgo.GoInt = 0;
    @:embedded
    public var s0 : _internal.reflect_test.Reflect_test_s0.S0 = ({} : _internal.reflect_test.Reflect_test_s0.S0);
    public function new(?b:stdgo.GoInt, ?s0:_internal.reflect_test.Reflect_test_s0.S0) {
        if (b != null) this.b = b;
        if (s0 != null) this.s0 = s0;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "s0", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s0dots0.__type___internaldotreflect_testdotReflect_test_s0dotS0 }, optional : false }])));
    public function __copy__() {
        return new S1(b, s0);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_r0_static_extension.R0_static_extension) @:using(_internal.reflect_test.Reflect_test_r0_static_extension.R0_static_extension) class R0 {
    @:embedded
    public var r1 : stdgo.Ref<_internal.reflect_test.Reflect_test_r1.R1> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r1.R1>);
    @:embedded
    public var r2 : stdgo.Ref<_internal.reflect_test.Reflect_test_r2.R2> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r2.R2>);
    @:embedded
    public var r3 : stdgo.Ref<_internal.reflect_test.Reflect_test_r3.R3> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r3.R3>);
    @:embedded
    public var r4 : stdgo.Ref<_internal.reflect_test.Reflect_test_r4.R4> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r4.R4>);
    public function new(?r1:stdgo.Ref<_internal.reflect_test.Reflect_test_r1.R1>, ?r2:stdgo.Ref<_internal.reflect_test.Reflect_test_r2.R2>, ?r3:stdgo.Ref<_internal.reflect_test.Reflect_test_r3.R3>, ?r4:stdgo.Ref<_internal.reflect_test.Reflect_test_r4.R4>) {
        if (r1 != null) this.r1 = r1;
        if (r2 != null) this.r2 = r2;
        if (r3 != null) this.r3 = r3;
        if (r4 != null) this.r4 = r4;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "r1", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r1dotr1.__type___internaldotreflect_testdotReflect_test_r1dotR1 }) }, optional : false }, { name : "r2", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r2dotr2.__type___internaldotreflect_testdotReflect_test_r2dotR2 }) }, optional : false }, { name : "r3", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r3dotr3.__type___internaldotreflect_testdotReflect_test_r3dotR3 }) }, optional : false }, { name : "r4", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r4dotr4.__type___internaldotreflect_testdotReflect_test_r4dotR4 }) }, optional : false }])));
    public function __copy__() {
        return new R0(r1, r2, r3, r4);
    }
}

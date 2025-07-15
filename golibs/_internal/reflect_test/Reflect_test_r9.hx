package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_r9_static_extension.R9_static_extension) @:using(_internal.reflect_test.Reflect_test_r9_static_extension.R9_static_extension) class R9 {
    @:embedded
    public var r13 : stdgo.Ref<_internal.reflect_test.Reflect_test_r13.R13> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r13.R13>);
    @:embedded
    public var r14 : stdgo.Ref<_internal.reflect_test.Reflect_test_r14.R14> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r14.R14>);
    @:embedded
    public var r15 : stdgo.Ref<_internal.reflect_test.Reflect_test_r15.R15> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r15.R15>);
    @:embedded
    public var r16 : stdgo.Ref<_internal.reflect_test.Reflect_test_r16.R16> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r16.R16>);
    public function new(?r13:stdgo.Ref<_internal.reflect_test.Reflect_test_r13.R13>, ?r14:stdgo.Ref<_internal.reflect_test.Reflect_test_r14.R14>, ?r15:stdgo.Ref<_internal.reflect_test.Reflect_test_r15.R15>, ?r16:stdgo.Ref<_internal.reflect_test.Reflect_test_r16.R16>) {
        if (r13 != null) this.r13 = r13;
        if (r14 != null) this.r14 = r14;
        if (r15 != null) this.r15 = r15;
        if (r16 != null) this.r16 = r16;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "r13", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r13dotr13.__type___internaldotreflect_testdotReflect_test_r13dotR13 }) }, optional : false }, { name : "r14", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r14dotr14.__type___internaldotreflect_testdotReflect_test_r14dotR14 }) }, optional : false }, { name : "r15", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r15dotr15.__type___internaldotreflect_testdotReflect_test_r15dotR15 }) }, optional : false }, { name : "r16", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r16dotr16.__type___internaldotreflect_testdotReflect_test_r16dotR16 }) }, optional : false }])));
    public function __copy__() {
        return new R9(r13, r14, r15, r16);
    }
}

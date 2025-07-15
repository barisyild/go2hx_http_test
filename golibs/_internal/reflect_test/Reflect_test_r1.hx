package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_r1_static_extension.R1_static_extension) @:using(_internal.reflect_test.Reflect_test_r1_static_extension.R1_static_extension) class R1 {
    @:embedded
    public var r5 : stdgo.Ref<_internal.reflect_test.Reflect_test_r5.R5> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r5.R5>);
    @:embedded
    public var r6 : stdgo.Ref<_internal.reflect_test.Reflect_test_r6.R6> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r6.R6>);
    @:embedded
    public var r7 : stdgo.Ref<_internal.reflect_test.Reflect_test_r7.R7> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r7.R7>);
    @:embedded
    public var r8 : stdgo.Ref<_internal.reflect_test.Reflect_test_r8.R8> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r8.R8>);
    public function new(?r5:stdgo.Ref<_internal.reflect_test.Reflect_test_r5.R5>, ?r6:stdgo.Ref<_internal.reflect_test.Reflect_test_r6.R6>, ?r7:stdgo.Ref<_internal.reflect_test.Reflect_test_r7.R7>, ?r8:stdgo.Ref<_internal.reflect_test.Reflect_test_r8.R8>) {
        if (r5 != null) this.r5 = r5;
        if (r6 != null) this.r6 = r6;
        if (r7 != null) this.r7 = r7;
        if (r8 != null) this.r8 = r8;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "r5", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r5dotr5.__type___internaldotreflect_testdotReflect_test_r5dotR5 }) }, optional : false }, { name : "r6", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r6dotr6.__type___internaldotreflect_testdotReflect_test_r6dotR6 }) }, optional : false }, { name : "r7", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r7dotr7.__type___internaldotreflect_testdotReflect_test_r7dotR7 }) }, optional : false }, { name : "r8", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r8dotr8.__type___internaldotreflect_testdotReflect_test_r8dotR8 }) }, optional : false }])));
    public function __copy__() {
        return new R1(r5, r6, r7, r8);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_r5_static_extension.R5_static_extension) @:using(_internal.reflect_test.Reflect_test_r5_static_extension.R5_static_extension) class R5 {
    @:embedded
    public var r9 : stdgo.Ref<_internal.reflect_test.Reflect_test_r9.R9> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r9.R9>);
    @:embedded
    public var r10 : stdgo.Ref<_internal.reflect_test.Reflect_test_r10.R10> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r10.R10>);
    @:embedded
    public var r11 : stdgo.Ref<_internal.reflect_test.Reflect_test_r11.R11> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r11.R11>);
    @:embedded
    public var r12 : stdgo.Ref<_internal.reflect_test.Reflect_test_r12.R12> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r12.R12>);
    public function new(?r9:stdgo.Ref<_internal.reflect_test.Reflect_test_r9.R9>, ?r10:stdgo.Ref<_internal.reflect_test.Reflect_test_r10.R10>, ?r11:stdgo.Ref<_internal.reflect_test.Reflect_test_r11.R11>, ?r12:stdgo.Ref<_internal.reflect_test.Reflect_test_r12.R12>) {
        if (r9 != null) this.r9 = r9;
        if (r10 != null) this.r10 = r10;
        if (r11 != null) this.r11 = r11;
        if (r12 != null) this.r12 = r12;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "r9", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r9dotr9.__type___internaldotreflect_testdotReflect_test_r9dotR9 }) }, optional : false }, { name : "r10", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r10dotr10.__type___internaldotreflect_testdotReflect_test_r10dotR10 }) }, optional : false }, { name : "r11", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r11dotr11.__type___internaldotreflect_testdotReflect_test_r11dotR11 }) }, optional : false }, { name : "r12", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r12dotr12.__type___internaldotreflect_testdotReflect_test_r12dotR12 }) }, optional : false }])));
    public function __copy__() {
        return new R5(r9, r10, r11, r12);
    }
}

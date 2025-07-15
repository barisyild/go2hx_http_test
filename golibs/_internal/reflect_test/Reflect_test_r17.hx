package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_r17_static_extension.R17_static_extension) @:using(_internal.reflect_test.Reflect_test_r17_static_extension.R17_static_extension) class R17 {
    @:embedded
    public var r21 : stdgo.Ref<_internal.reflect_test.Reflect_test_r21.R21> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r21.R21>);
    @:embedded
    public var r22 : stdgo.Ref<_internal.reflect_test.Reflect_test_r22.R22> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r22.R22>);
    @:embedded
    public var r23 : stdgo.Ref<_internal.reflect_test.Reflect_test_r23.R23> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r23.R23>);
    @:embedded
    public var r24 : stdgo.Ref<_internal.reflect_test.Reflect_test_r24.R24> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r24.R24>);
    public function new(?r21:stdgo.Ref<_internal.reflect_test.Reflect_test_r21.R21>, ?r22:stdgo.Ref<_internal.reflect_test.Reflect_test_r22.R22>, ?r23:stdgo.Ref<_internal.reflect_test.Reflect_test_r23.R23>, ?r24:stdgo.Ref<_internal.reflect_test.Reflect_test_r24.R24>) {
        if (r21 != null) this.r21 = r21;
        if (r22 != null) this.r22 = r22;
        if (r23 != null) this.r23 = r23;
        if (r24 != null) this.r24 = r24;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "r21", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r21dotr21.__type___internaldotreflect_testdotReflect_test_r21dotR21 }) }, optional : false }, { name : "r22", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r22dotr22.__type___internaldotreflect_testdotReflect_test_r22dotR22 }) }, optional : false }, { name : "r23", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r23dotr23.__type___internaldotreflect_testdotReflect_test_r23dotR23 }) }, optional : false }, { name : "r24", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r24dotr24.__type___internaldotreflect_testdotReflect_test_r24dotR24 }) }, optional : false }])));
    public function __copy__() {
        return new R17(r21, r22, r23, r24);
    }
}

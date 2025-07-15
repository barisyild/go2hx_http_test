package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_r13_static_extension.R13_static_extension) @:using(_internal.reflect_test.Reflect_test_r13_static_extension.R13_static_extension) class R13 {
    @:embedded
    public var r17 : stdgo.Ref<_internal.reflect_test.Reflect_test_r17.R17> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r17.R17>);
    @:embedded
    public var r18 : stdgo.Ref<_internal.reflect_test.Reflect_test_r18.R18> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r18.R18>);
    @:embedded
    public var r19 : stdgo.Ref<_internal.reflect_test.Reflect_test_r19.R19> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r19.R19>);
    @:embedded
    public var r20 : stdgo.Ref<_internal.reflect_test.Reflect_test_r20.R20> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_r20.R20>);
    public function new(?r17:stdgo.Ref<_internal.reflect_test.Reflect_test_r17.R17>, ?r18:stdgo.Ref<_internal.reflect_test.Reflect_test_r18.R18>, ?r19:stdgo.Ref<_internal.reflect_test.Reflect_test_r19.R19>, ?r20:stdgo.Ref<_internal.reflect_test.Reflect_test_r20.R20>) {
        if (r17 != null) this.r17 = r17;
        if (r18 != null) this.r18 = r18;
        if (r19 != null) this.r19 = r19;
        if (r20 != null) this.r20 = r20;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "r17", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r17dotr17.__type___internaldotreflect_testdotReflect_test_r17dotR17 }) }, optional : false }, { name : "r18", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r18dotr18.__type___internaldotreflect_testdotReflect_test_r18dotR18 }) }, optional : false }, { name : "r19", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r19dotr19.__type___internaldotreflect_testdotReflect_test_r19dotR19 }) }, optional : false }, { name : "r20", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r20dotr20.__type___internaldotreflect_testdotReflect_test_r20dotR20 }) }, optional : false }])));
    public function __copy__() {
        return new R13(r17, r18, r19, r20);
    }
}

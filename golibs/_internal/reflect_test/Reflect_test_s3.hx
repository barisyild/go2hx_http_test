package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s3_static_extension.S3_static_extension) @:using(_internal.reflect_test.Reflect_test_s3_static_extension.S3_static_extension) class S3 {
    @:embedded
    public var s1x : _internal.reflect_test.Reflect_test_s1x.S1x = ({} : _internal.reflect_test.Reflect_test_s1x.S1x);
    @:embedded
    public var s2 : _internal.reflect_test.Reflect_test_s2.S2 = ({} : _internal.reflect_test.Reflect_test_s2.S2);
    public var d : stdgo.GoInt = 0;
    public var e : stdgo.GoInt = 0;
    @:embedded
    public var s1y : stdgo.Ref<_internal.reflect_test.Reflect_test_s1y.S1y> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_s1y.S1y>);
    public function new(?s1x:_internal.reflect_test.Reflect_test_s1x.S1x, ?s2:_internal.reflect_test.Reflect_test_s2.S2, ?d:stdgo.GoInt, ?e:stdgo.GoInt, ?s1y:stdgo.Ref<_internal.reflect_test.Reflect_test_s1y.S1y>) {
        if (s1x != null) this.s1x = s1x;
        if (s2 != null) this.s2 = s2;
        if (d != null) this.d = d;
        if (e != null) this.e = e;
        if (s1y != null) this.s1y = s1y;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s1x", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s1xdots1x.__type___internaldotreflect_testdotReflect_test_s1xdotS1x }, optional : false }, { name : "s2", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s2dots2.__type___internaldotreflect_testdotReflect_test_s2dotS2 }, optional : false }, { name : "d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "s1y", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s1ydots1y.__type___internaldotreflect_testdotReflect_test_s1ydotS1y }) }, optional : false }])));
    public function __copy__() {
        return new S3(s1x, s2, d, e, s1y);
    }
}

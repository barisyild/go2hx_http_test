package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s14_static_extension.S14_static_extension) @:using(_internal.reflect_test.Reflect_test_s14_static_extension.S14_static_extension) class S14 {
    @:embedded
    public var s15 : _internal.reflect_test.Reflect_test_s15.S15 = ({} : _internal.reflect_test.Reflect_test_s15.S15);
    @:embedded
    public var s16 : _internal.reflect_test.Reflect_test_s16.S16 = ({} : _internal.reflect_test.Reflect_test_s16.S16);
    public function new(?s15:_internal.reflect_test.Reflect_test_s15.S15, ?s16:_internal.reflect_test.Reflect_test_s16.S16) {
        if (s15 != null) this.s15 = s15;
        if (s16 != null) this.s16 = s16;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s15", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s15dots15.__type___internaldotreflect_testdotReflect_test_s15dotS15 }, optional : false }, { name : "s16", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s16dots16.__type___internaldotreflect_testdotReflect_test_s16dotS16 }, optional : false }])));
    public function __copy__() {
        return new S14(s15, s16);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s5_static_extension.S5_static_extension) @:using(_internal.reflect_test.Reflect_test_s5_static_extension.S5_static_extension) class S5 {
    @:embedded
    public var s6 : _internal.reflect_test.Reflect_test_s6.S6 = ({} : _internal.reflect_test.Reflect_test_s6.S6);
    @:embedded
    public var s7 : _internal.reflect_test.Reflect_test_s7.S7 = ({} : _internal.reflect_test.Reflect_test_s7.S7);
    @:embedded
    public var s8 : _internal.reflect_test.Reflect_test_s8.S8 = ({} : _internal.reflect_test.Reflect_test_s8.S8);
    public function new(?s6:_internal.reflect_test.Reflect_test_s6.S6, ?s7:_internal.reflect_test.Reflect_test_s7.S7, ?s8:_internal.reflect_test.Reflect_test_s8.S8) {
        if (s6 != null) this.s6 = s6;
        if (s7 != null) this.s7 = s7;
        if (s8 != null) this.s8 = s8;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s6", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s6dots6.__type___internaldotreflect_testdotReflect_test_s6dotS6 }, optional : false }, { name : "s7", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s7dots7.__type___internaldotreflect_testdotReflect_test_s7dotS7 }, optional : false }, { name : "s8", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s8dots8.__type___internaldotreflect_testdotReflect_test_s8dotS8 }, optional : false }])));
    public function __copy__() {
        return new S5(s6, s7, s8);
    }
}

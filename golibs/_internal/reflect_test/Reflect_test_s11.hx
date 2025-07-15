package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s11_static_extension.S11_static_extension) @:using(_internal.reflect_test.Reflect_test_s11_static_extension.S11_static_extension) class S11 {
    @:embedded
    public var s6 : _internal.reflect_test.Reflect_test_s6.S6 = ({} : _internal.reflect_test.Reflect_test_s6.S6);
    public function new(?s6:_internal.reflect_test.Reflect_test_s6.S6) {
        if (s6 != null) this.s6 = s6;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s6", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s6dots6.__type___internaldotreflect_testdotReflect_test_s6dotS6 }, optional : false }])));
    public function __copy__() {
        return new S11(s6);
    }
}

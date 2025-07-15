package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s15_static_extension.S15_static_extension) @:using(_internal.reflect_test.Reflect_test_s15_static_extension.S15_static_extension) class S15 {
    @:embedded
    public var s11 : _internal.reflect_test.Reflect_test_s11.S11 = ({} : _internal.reflect_test.Reflect_test_s11.S11);
    public function new(?s11:_internal.reflect_test.Reflect_test_s11.S11) {
        if (s11 != null) this.s11 = s11;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s11", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s11dots11.__type___internaldotreflect_testdotReflect_test_s11dotS11 }, optional : false }])));
    public function __copy__() {
        return new S15(s11);
    }
}

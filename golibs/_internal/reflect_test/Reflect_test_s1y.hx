package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s1y_static_extension.S1y_static_extension) @:using(_internal.reflect_test.Reflect_test_s1y_static_extension.S1y_static_extension) class S1y {
    @:embedded
    public var s1 : _internal.reflect_test.Reflect_test_s1.S1 = ({} : _internal.reflect_test.Reflect_test_s1.S1);
    public function new(?s1:_internal.reflect_test.Reflect_test_s1.S1) {
        if (s1 != null) this.s1 = s1;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s1", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s1dots1.__type___internaldotreflect_testdotReflect_test_s1dotS1 }, optional : false }])));
    public function __copy__() {
        return new S1y(s1);
    }
}

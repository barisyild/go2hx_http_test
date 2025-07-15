package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s8_static_extension.S8_static_extension) @:using(_internal.reflect_test.Reflect_test_s8_static_extension.S8_static_extension) class S8 {
    @:embedded
    public var s9 : _internal.reflect_test.Reflect_test_s9.S9 = ({} : _internal.reflect_test.Reflect_test_s9.S9);
    public function new(?s9:_internal.reflect_test.Reflect_test_s9.S9) {
        if (s9 != null) this.s9 = s9;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s9", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s9dots9.__type___internaldotreflect_testdotReflect_test_s9dotS9 }, optional : false }])));
    public function __copy__() {
        return new S8(s9);
    }
}

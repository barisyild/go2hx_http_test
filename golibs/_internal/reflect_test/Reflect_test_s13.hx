package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s13_static_extension.S13_static_extension) @:using(_internal.reflect_test.Reflect_test_s13_static_extension.S13_static_extension) class S13 {
    @:embedded
    public var s8 : _internal.reflect_test.Reflect_test_s8.S8 = ({} : _internal.reflect_test.Reflect_test_s8.S8);
    public function new(?s8:_internal.reflect_test.Reflect_test_s8.S8) {
        if (s8 != null) this.s8 = s8;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s8", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s8dots8.__type___internaldotreflect_testdotReflect_test_s8dotS8 }, optional : false }])));
    public function __copy__() {
        return new S13(s8);
    }
}

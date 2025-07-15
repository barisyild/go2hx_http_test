package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_s10_static_extension.S10_static_extension) @:using(_internal.reflect_test.Reflect_test_s10_static_extension.S10_static_extension) class S10 {
    @:embedded
    public var s11 : _internal.reflect_test.Reflect_test_s11.S11 = ({} : _internal.reflect_test.Reflect_test_s11.S11);
    @:embedded
    public var s12 : _internal.reflect_test.Reflect_test_s12.S12 = ({} : _internal.reflect_test.Reflect_test_s12.S12);
    @:embedded
    public var s13 : _internal.reflect_test.Reflect_test_s13.S13 = ({} : _internal.reflect_test.Reflect_test_s13.S13);
    public function new(?s11:_internal.reflect_test.Reflect_test_s11.S11, ?s12:_internal.reflect_test.Reflect_test_s12.S12, ?s13:_internal.reflect_test.Reflect_test_s13.S13) {
        if (s11 != null) this.s11 = s11;
        if (s12 != null) this.s12 = s12;
        if (s13 != null) this.s13 = s13;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s11", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s11dots11.__type___internaldotreflect_testdotReflect_test_s11dotS11 }, optional : false }, { name : "s12", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s12dots12.__type___internaldotreflect_testdotReflect_test_s12dotS12 }, optional : false }, { name : "s13", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s13dots13.__type___internaldotreflect_testdotReflect_test_s13dotS13 }, optional : false }])));
    public function __copy__() {
        return new S10(s11, s12, s13);
    }
}

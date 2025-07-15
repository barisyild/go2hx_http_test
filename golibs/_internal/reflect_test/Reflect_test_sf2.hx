package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sf2_static_extension.SF2_static_extension) @:using(_internal.reflect_test.Reflect_test_sf2_static_extension.SF2_static_extension) class SF2 {
    @:embedded
    public var sF1 : _internal.reflect_test.Reflect_test_sf1.SF1 = ({} : _internal.reflect_test.Reflect_test_sf1.SF1);
    public function new(?sF1:_internal.reflect_test.Reflect_test_sf1.SF1) {
        if (sF1 != null) this.sF1 = sF1;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "sF1", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sf1dotsf1.__type___internaldotreflect_testdotReflect_test_sf1dotSF1 }, optional : false }])));
    public function __copy__() {
        return new SF2(sF1);
    }
}

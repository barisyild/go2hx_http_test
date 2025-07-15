package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sf1_static_extension.SF1_static_extension) @:using(_internal.reflect_test.Reflect_test_sf1_static_extension.SF1_static_extension) class SF1 {
    @:embedded
    public var sF : _internal.reflect_test.Reflect_test_sf.SF = ({} : _internal.reflect_test.Reflect_test_sf.SF);
    public function new(?sF:_internal.reflect_test.Reflect_test_sf.SF) {
        if (sF != null) this.sF = sF;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "sF", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sfdotsf.__type___internaldotreflect_testdotReflect_test_sfdotSF }, optional : false }])));
    public function __copy__() {
        return new SF1(sF);
    }
}

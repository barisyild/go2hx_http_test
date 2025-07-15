package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sfg1_static_extension.SFG1_static_extension) @:using(_internal.reflect_test.Reflect_test_sfg1_static_extension.SFG1_static_extension) class SFG1 {
    @:embedded
    public var sFG : _internal.reflect_test.Reflect_test_sfg.SFG = ({} : _internal.reflect_test.Reflect_test_sfg.SFG);
    public function new(?sFG:_internal.reflect_test.Reflect_test_sfg.SFG) {
        if (sFG != null) this.sFG = sFG;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "sFG", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sfgdotsfg.__type___internaldotreflect_testdotReflect_test_sfgdotSFG }, optional : false }])));
    public function __copy__() {
        return new SFG1(sFG);
    }
}

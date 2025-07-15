package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sfg2_static_extension.SFG2_static_extension) @:using(_internal.reflect_test.Reflect_test_sfg2_static_extension.SFG2_static_extension) class SFG2 {
    @:embedded
    public var sFG1 : _internal.reflect_test.Reflect_test_sfg1.SFG1 = ({} : _internal.reflect_test.Reflect_test_sfg1.SFG1);
    public function new(?sFG1:_internal.reflect_test.Reflect_test_sfg1.SFG1) {
        if (sFG1 != null) this.sFG1 = sFG1;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "sFG1", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sfg1dotsfg1.__type___internaldotreflect_testdotReflect_test_sfg1dotSFG1 }, optional : false }])));
    public function __copy__() {
        return new SFG2(sFG1);
    }
}

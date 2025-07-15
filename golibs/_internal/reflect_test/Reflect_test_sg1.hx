package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sg1_static_extension.SG1_static_extension) @:using(_internal.reflect_test.Reflect_test_sg1_static_extension.SG1_static_extension) class SG1 {
    @:embedded
    public var sG : _internal.reflect_test.Reflect_test_sg.SG = ({} : _internal.reflect_test.Reflect_test_sg.SG);
    public function new(?sG:_internal.reflect_test.Reflect_test_sg.SG) {
        if (sG != null) this.sG = sG;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "sG", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sgdotsg.__type___internaldotreflect_testdotReflect_test_sgdotSG }, optional : false }])));
    public function __copy__() {
        return new SG1(sG);
    }
}

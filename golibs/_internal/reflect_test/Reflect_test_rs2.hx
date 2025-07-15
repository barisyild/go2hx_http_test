package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_rs2_static_extension.RS2_static_extension) @:using(_internal.reflect_test.Reflect_test_rs2_static_extension.RS2_static_extension) class RS2 {
    @:embedded
    public var rS1 : _internal.reflect_test.Reflect_test_rs1.RS1 = ({} : _internal.reflect_test.Reflect_test_rs1.RS1);
    public function new(?rS1:_internal.reflect_test.Reflect_test_rs1.RS1) {
        if (rS1 != null) this.rS1 = rS1;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "rS1", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_rs1dotrs1.__type___internaldotreflect_testdotReflect_test_rs1dotRS1 }, optional : false }])));
    public function __copy__() {
        return new RS2(rS1);
    }
}

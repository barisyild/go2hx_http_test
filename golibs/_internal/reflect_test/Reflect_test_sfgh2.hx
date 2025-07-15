package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sfgh2_static_extension.SFGH2_static_extension) @:using(_internal.reflect_test.Reflect_test_sfgh2_static_extension.SFGH2_static_extension) class SFGH2 {
    @:embedded
    public var sFGH1 : _internal.reflect_test.Reflect_test_sfgh1.SFGH1 = ({} : _internal.reflect_test.Reflect_test_sfgh1.SFGH1);
    public function new(?sFGH1:_internal.reflect_test.Reflect_test_sfgh1.SFGH1) {
        if (sFGH1 != null) this.sFGH1 = sFGH1;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "sFGH1", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sfgh1dotsfgh1.__type___internaldotreflect_testdotReflect_test_sfgh1dotSFGH1 }, optional : false }])));
    public function __copy__() {
        return new SFGH2(sFGH1);
    }
}

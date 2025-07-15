package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sfgh3_static_extension.SFGH3_static_extension) @:using(_internal.reflect_test.Reflect_test_sfgh3_static_extension.SFGH3_static_extension) class SFGH3 {
    @:embedded
    public var sFGH2 : _internal.reflect_test.Reflect_test_sfgh2.SFGH2 = ({} : _internal.reflect_test.Reflect_test_sfgh2.SFGH2);
    public function new(?sFGH2:_internal.reflect_test.Reflect_test_sfgh2.SFGH2) {
        if (sFGH2 != null) this.sFGH2 = sFGH2;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "sFGH2", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sfgh2dotsfgh2.__type___internaldotreflect_testdotReflect_test_sfgh2dotSFGH2 }, optional : false }])));
    public function __copy__() {
        return new SFGH3(sFGH2);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sfgh1_static_extension.SFGH1_static_extension) @:using(_internal.reflect_test.Reflect_test_sfgh1_static_extension.SFGH1_static_extension) class SFGH1 {
    @:embedded
    public var sFGH : _internal.reflect_test.Reflect_test_sfgh.SFGH = ({} : _internal.reflect_test.Reflect_test_sfgh.SFGH);
    public function new(?sFGH:_internal.reflect_test.Reflect_test_sfgh.SFGH) {
        if (sFGH != null) this.sFGH = sFGH;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "sFGH", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sfghdotsfgh.__type___internaldotreflect_testdotReflect_test_sfghdotSFGH }, optional : false }])));
    public function __copy__() {
        return new SFGH1(sFGH);
    }
}

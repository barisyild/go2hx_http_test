package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_tm1_static_extension.Tm1_static_extension) @:using(_internal.reflect_test.Reflect_test_tm1_static_extension.Tm1_static_extension) class Tm1 {
    @:embedded
    public var tm2 : _internal.reflect_test.Reflect_test_tm2.Tm2 = ({} : _internal.reflect_test.Reflect_test_tm2.Tm2);
    public function new(?tm2:_internal.reflect_test.Reflect_test_tm2.Tm2) {
        if (tm2 != null) this.tm2 = tm2;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "tm2", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_tm2dottm2.__type___internaldotreflect_testdotReflect_test_tm2dotTm2 }, optional : false }])));
    public var m(get, never) : (stdgo.GoInt, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_m():(stdgo.GoInt, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } return @:check31 (this.tm2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).m;
    public function __copy__() {
        return new Tm1(tm2);
    }
}

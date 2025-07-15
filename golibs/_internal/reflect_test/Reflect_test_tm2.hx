package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_tm2_static_extension.Tm2_static_extension) @:using(_internal.reflect_test.Reflect_test_tm2_static_extension.Tm2_static_extension) class Tm2 {
    @:embedded
    public var tm3 : stdgo.Ref<_internal.reflect_test.Reflect_test_tm3.Tm3> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_tm3.Tm3>);
    public function new(?tm3:stdgo.Ref<_internal.reflect_test.Reflect_test_tm3.Tm3>) {
        if (tm3 != null) this.tm3 = tm3;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "tm3", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_tm3dottm3.__type___internaldotreflect_testdotReflect_test_tm3dotTm3 }) }, optional : false }])));
    public var m(get, never) : (stdgo.GoInt, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_m():(stdgo.GoInt, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } return @:check31 (this.tm3 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).m;
    public function __copy__() {
        return new Tm2(tm3);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_tm3_static_extension.Tm3_static_extension) @:using(_internal.reflect_test.Reflect_test_tm3_static_extension.Tm3_static_extension) class Tm3 {
    @:embedded
    public var tm4 : stdgo.Ref<_internal.reflect_test.Reflect_test_tm4.Tm4> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_tm4.Tm4>);
    public function new(?tm4:stdgo.Ref<_internal.reflect_test.Reflect_test_tm4.Tm4>) {
        if (tm4 != null) this.tm4 = tm4;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "tm4", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_tm4dottm4.__type___internaldotreflect_testdotReflect_test_tm4dotTm4 }) }, optional : false }])));
    public var m(get, never) : (stdgo.GoInt, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_m():(stdgo.GoInt, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } return @:check31 (this.tm4 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).m;
    public function __copy__() {
        return new Tm3(tm4);
    }
}

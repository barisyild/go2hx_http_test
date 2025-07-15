package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_outerint_static_extension.OuterInt_static_extension) @:using(_internal.reflect_test.Reflect_test_outerint_static_extension.OuterInt_static_extension) class OuterInt {
    public var y : stdgo.GoInt = 0;
    @:embedded
    public var innerInt : _internal.reflect_test.Reflect_test_innerint.InnerInt = ({} : _internal.reflect_test.Reflect_test_innerint.InnerInt);
    public function new(?y:stdgo.GoInt, ?innerInt:_internal.reflect_test.Reflect_test_innerint.InnerInt) {
        if (y != null) this.y = y;
        if (innerInt != null) this.innerInt = innerInt;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "innerInt", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_innerintdotinnerint.__type___internaldotreflect_testdotReflect_test_innerintdotInnerInt }, optional : false }])));
    public var m(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_m():() -> stdgo.GoInt return @:check32 this.innerInt.m;
    public function __copy__() {
        return new OuterInt(y, innerInt);
    }
}

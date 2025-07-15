package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_talias2_static_extension.Talias2_static_extension) @:using(_internal.reflect_test.Reflect_test_talias2_static_extension.Talias2_static_extension) class Talias2 {
    @:embedded
    public var tint : _internal.reflect_test.Reflect_test_tint.Tint = ((0 : stdgo.GoInt) : _internal.reflect_test.Reflect_test_tint.Tint);
    @:embedded
    public var tint2 : _internal.reflect_test.Reflect_test_tint.Tint = ((0 : stdgo.GoInt) : _internal.reflect_test.Reflect_test_tint.Tint);
    public function new(?tint:_internal.reflect_test.Reflect_test_tint.Tint, ?tint2:_internal.reflect_test.Reflect_test_tint.Tint) {
        if (tint != null) this.tint = tint;
        if (tint2 != null) this.tint2 = tint2;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "tint", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_tintdottint.__type___internaldotreflect_testdotReflect_test_tintdotTint }, optional : false }, { name : "tint2", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_tintdottint.__type___internaldotreflect_testdotReflect_test_tintdotTint }, optional : false }])));
    public function __copy__() {
        return new Talias2(tint, tint2);
    }
}

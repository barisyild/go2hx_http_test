package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sfg_static_extension.SFG_static_extension) @:using(_internal.reflect_test.Reflect_test_sfg_static_extension.SFG_static_extension) class SFG {
    public var f : stdgo.GoInt = 0;
    public var g : stdgo.GoInt = 0;
    public function new(?f:stdgo.GoInt, ?g:stdgo.GoInt) {
        if (f != null) this.f = f;
        if (g != null) this.g = g;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "g", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new SFG(f, g);
    }
}

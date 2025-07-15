package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sfgh_static_extension.SFGH_static_extension) @:using(_internal.reflect_test.Reflect_test_sfgh_static_extension.SFGH_static_extension) class SFGH {
    public var f : stdgo.GoInt = 0;
    public var g : stdgo.GoInt = 0;
    public var h : stdgo.GoInt = 0;
    public function new(?f:stdgo.GoInt, ?g:stdgo.GoInt, ?h:stdgo.GoInt) {
        if (f != null) this.f = f;
        if (g != null) this.g = g;
        if (h != null) this.h = h;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "g", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "h", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new SFGH(f, g, h);
    }
}

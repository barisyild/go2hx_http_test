package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_sg_static_extension.SG_static_extension) @:using(_internal.reflect_test.Reflect_test_sg_static_extension.SG_static_extension) class SG {
    public var g : stdgo.GoInt = 0;
    public function new(?g:stdgo.GoInt) {
        if (g != null) this.g = g;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "g", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new SG(g);
    }
}

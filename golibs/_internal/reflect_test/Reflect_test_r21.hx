package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_r21_static_extension.R21_static_extension) @:using(_internal.reflect_test.Reflect_test_r21_static_extension.R21_static_extension) class R21 {
    public var x : stdgo.GoInt = 0;
    public function new(?x:stdgo.GoInt) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new R21(x);
    }
}

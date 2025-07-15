package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_b1_static_extension.B1_static_extension) @:using(_internal.reflect_test.Reflect_test_b1_static_extension.B1_static_extension) class B1 {
    public var x : stdgo.GoInt = 0;
    public var y : stdgo.GoInt = 0;
    public var z : stdgo.GoInt = 0;
    public function new(?x:stdgo.GoInt, ?y:stdgo.GoInt, ?z:stdgo.GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "z", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new B1(x, y, z);
    }
}

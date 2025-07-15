package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_noncomparablestruct_static_extension.NonComparableStruct_static_extension) @:using(_internal.reflect_test.Reflect_test_noncomparablestruct_static_extension.NonComparableStruct_static_extension) class NonComparableStruct {
    public var x : stdgo.GoInt = 0;
    public var y : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public function new(?x:stdgo.GoInt, ?y:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new NonComparableStruct(x, y);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_settablepointer_static_extension.SettablePointer_static_extension) @:using(_internal.reflect_test.Reflect_test_settablepointer_static_extension.SettablePointer_static_extension) class SettablePointer {
    public var settableField : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public function new(?settableField:stdgo.Pointer<stdgo.GoInt>) {
        if (settableField != null) this.settableField = settableField;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "settableField", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new SettablePointer(settableField);
    }
}

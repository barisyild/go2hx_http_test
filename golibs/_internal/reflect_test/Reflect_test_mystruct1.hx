package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_mystruct1_static_extension.MyStruct1_static_extension) @:using(_internal.reflect_test.Reflect_test_mystruct1_static_extension.MyStruct1_static_extension) class MyStruct1 {
    public var _x : { var _int : stdgo.GoInt; } = { _int : 0 };
    public function new(?_x:{ var _int : stdgo.GoInt; }) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "_int", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }]) }, optional : false }])));
    public function __copy__() {
        return new MyStruct1(_x);
    }
}

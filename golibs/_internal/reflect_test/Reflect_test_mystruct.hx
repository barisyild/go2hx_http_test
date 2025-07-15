package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_mystruct_static_extension.MyStruct_static_extension) @:using(_internal.reflect_test.Reflect_test_mystruct_static_extension.MyStruct_static_extension) class MyStruct {
    @:tag("`some:\"tag\"`")
    public var _x : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "`some:\"tag\"`", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new MyStruct(_x);
    }
}

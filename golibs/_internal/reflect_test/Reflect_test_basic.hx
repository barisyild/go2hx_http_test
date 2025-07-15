package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_basic_static_extension.Basic_static_extension) @:using(_internal.reflect_test.Reflect_test_basic_static_extension.Basic_static_extension) class Basic {
    public var _x : stdgo.GoInt = 0;
    public var _y : stdgo.GoFloat32 = 0;
    public function new(?_x:stdgo.GoInt, ?_y:stdgo.GoFloat32) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(float32_kind) }, optional : false }])));
    public function __copy__() {
        return new Basic(_x, _y);
    }
}

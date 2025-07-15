package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_inner_static_extension.T_inner_static_extension) @:using(_internal.reflect_test.Reflect_test_t_inner_static_extension.T_inner_static_extension) class T_inner {
    public var _x : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_inner(_x);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testswapper___localname___pair_197859_static_extension.T_testSwapper___localname___pair_197859_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testswapper___localname___pair_197859_static_extension.T_testSwapper___localname___pair_197859_static_extension) class T_testSwapper___localname___pair_197859 {
    public var _x : stdgo.GoInt = 0;
    public var _y : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt, ?_y:stdgo.GoInt) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testSwapper___localname___pair_197859(_x, _y);
    }
}

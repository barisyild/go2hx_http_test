package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testcansetfield___localname___embed_10451_static_extension.T_testCanSetField___localname___embed_10451_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testcansetfield___localname___embed_10451_static_extension.T_testCanSetField___localname___embed_10451_static_extension) class T_testCanSetField___localname___embed_10451 {
    public var _x : stdgo.GoInt = 0;
    public var x : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt, ?x:stdgo.GoInt) {
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testCanSetField___localname___embed_10451(_x, x);
    }
}

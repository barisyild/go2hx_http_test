package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testswapper___localname___pairptr_197893_static_extension.T_testSwapper___localname___pairPtr_197893_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testswapper___localname___pairptr_197893_static_extension.T_testSwapper___localname___pairPtr_197893_static_extension) class T_testSwapper___localname___pairPtr_197893 {
    public var _x : stdgo.GoInt = 0;
    public var _y : stdgo.GoInt = 0;
    public var _p : stdgo.Pointer<_internal.reflect_test.Reflect_test_t_testswapper___localname___i_197832.T_testSwapper___localname___I_197832> = (null : stdgo.Pointer<_internal.reflect_test.Reflect_test_t_testswapper___localname___i_197832.T_testSwapper___localname___I_197832>);
    public function new(?_x:stdgo.GoInt, ?_y:stdgo.GoInt, ?_p:stdgo.Pointer<_internal.reflect_test.Reflect_test_t_testswapper___localname___i_197832.T_testSwapper___localname___I_197832>) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testswapper___localname___i_197832dott_testswapper___localname___i_197832.__type___internaldotreflect_testdotReflect_test_t_testswapper___localname___i_197832dotT_testSwapper___localname___I_197832 }) }, optional : false }])));
    public function __copy__() {
        return new T_testSwapper___localname___pairPtr_197893(_x, _y, _p);
    }
}

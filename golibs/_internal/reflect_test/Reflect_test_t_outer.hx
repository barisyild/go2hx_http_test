package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_outer_static_extension.T_outer_static_extension) @:using(_internal.reflect_test.Reflect_test_t_outer_static_extension.T_outer_static_extension) class T_outer {
    public var _y : stdgo.GoInt = 0;
    @:embedded
    public var _inner : _internal.reflect_test.Reflect_test_t_inner.T_inner = ({} : _internal.reflect_test.Reflect_test_t_inner.T_inner);
    public function new(?_y:stdgo.GoInt, ?_inner:_internal.reflect_test.Reflect_test_t_inner.T_inner) {
        if (_y != null) this._y = _y;
        if (_inner != null) this._inner = _inner;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_inner", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_innerdott_inner.__type___internaldotreflect_testdotReflect_test_t_innerdotT_inner }, optional : false }])));
    public function __copy__() {
        return new T_outer(_y, _inner);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_recursive_static_extension.Recursive_static_extension) @:using(_internal.reflect_test.Reflect_test_recursive_static_extension.Recursive_static_extension) class Recursive {
    public var _x : stdgo.GoInt = 0;
    public var _r : stdgo.Ref<_internal.reflect_test.Reflect_test_recursive.Recursive> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_recursive.Recursive>);
    public function new(?_x:stdgo.GoInt, ?_r:stdgo.Ref<_internal.reflect_test.Reflect_test_recursive.Recursive>) {
        if (_x != null) this._x = _x;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_recursivedotrecursive.__type___internaldotreflect_testdotReflect_test_recursivedotRecursive }) }, optional : false }])));
    public function __copy__() {
        return new Recursive(_x, _r);
    }
}

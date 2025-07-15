package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_deepequaltest_static_extension.DeepEqualTest_static_extension) @:using(_internal.reflect_test.Reflect_test_deepequaltest_static_extension.DeepEqualTest_static_extension) class DeepEqualTest {
    public var _a : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _b : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _eq : Bool = false;
    public function new(?_a:stdgo.AnyInterface, ?_b:stdgo.AnyInterface, ?_eq:Bool) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_eq != null) this._eq = _eq;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_eq", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new DeepEqualTest(_a, _b, _eq);
    }
}

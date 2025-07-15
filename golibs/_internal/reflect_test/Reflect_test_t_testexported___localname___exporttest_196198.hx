package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testexported___localname___exporttest_196198_static_extension.T_testExported___localname___exportTest_196198_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testexported___localname___exporttest_196198_static_extension.T_testExported___localname___exportTest_196198_static_extension) class T_testExported___localname___exportTest_196198 {
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _want : Bool = false;
    public function new(?_v:stdgo.AnyInterface, ?_want:Bool) {
        if (_v != null) this._v = _v;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_want", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testExported___localname___exportTest_196198(_v, _want);
    }
}

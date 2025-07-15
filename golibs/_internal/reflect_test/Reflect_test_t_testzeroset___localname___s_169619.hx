package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testzeroset___localname___s_169619_static_extension.T_testZeroSet___localname___S_169619_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testzeroset___localname___s_169619_static_extension.T_testZeroSet___localname___S_169619_static_extension) class T_testZeroSet___localname___S_169619 {
    public var _a : stdgo.GoUInt64 = 0;
    public var t : _internal.reflect_test.Reflect_test_t_testzeroset___localname___t_169602.T_testZeroSet___localname___T_169602 = new _internal.reflect_test.Reflect_test_t_testzeroset___localname___t_169602.T_testZeroSet___localname___T_169602(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
    public var _b : stdgo.GoUInt64 = 0;
    public function new(?_a:stdgo.GoUInt64, ?t:_internal.reflect_test.Reflect_test_t_testzeroset___localname___t_169602.T_testZeroSet___localname___T_169602, ?_b:stdgo.GoUInt64) {
        if (_a != null) this._a = _a;
        if (t != null) this.t = t;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "t", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testzeroset___localname___t_169602dott_testzeroset___localname___t_169602.__type___internaldotreflect_testdotReflect_test_t_testzeroset___localname___t_169602dotT_testZeroSet___localname___T_169602 }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testZeroSet___localname___S_169619(_a, t, _b);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_big_static_extension.T_big_static_extension) @:using(_internal.reflect_test.Reflect_test_t_big_static_extension.T_big_static_extension) class T_big {
    public var _a : stdgo.GoInt64 = 0;
    public var _b : stdgo.GoInt64 = 0;
    public var _c : stdgo.GoInt64 = 0;
    public var _d : stdgo.GoInt64 = 0;
    public var _e : stdgo.GoInt64 = 0;
    public function new(?_a:stdgo.GoInt64, ?_b:stdgo.GoInt64, ?_c:stdgo.GoInt64, ?_d:stdgo.GoInt64, ?_e:stdgo.GoInt64) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
        if (_e != null) this._e = _e;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }])));
    public function __copy__() {
        return new T_big(_a, _b, _c, _d, _e);
    }
}

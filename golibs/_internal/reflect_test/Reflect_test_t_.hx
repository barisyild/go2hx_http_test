package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t__static_extension.T__static_extension) @:using(_internal.reflect_test.Reflect_test_t__static_extension.T__static_extension) class T_ {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoFloat64 = 0;
    public var _c : stdgo.GoString = "";
    public var _d : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoFloat64, ?_c:stdgo.GoString, ?_d:stdgo.Pointer<stdgo.GoInt>) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, optional : false }, { name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_(_a, _b, _c, _d);
    }
}

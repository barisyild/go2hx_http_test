package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t__complex_static_extension.T__Complex_static_extension) @:using(_internal.reflect_test.Reflect_test_t__complex_static_extension.T__Complex_static_extension) class T__Complex {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_t__complex.T__Complex>> = new stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_t__complex.T__Complex>>(3, 3);
    public var _c : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
    public var _d : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64> = (null : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64>);
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_t__complex.T__Complex>>, ?_c:stdgo.Pointer<stdgo.GoString>, ?_d:stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64>) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex }) }, 3) }, optional : false }, { name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }, { name : "_d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T__Complex(_a, _b, _c, _d);
    }
}

package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testfunclayout___localname___s_179107_static_extension.T_testFuncLayout___localname___S_179107_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testfunclayout___localname___s_179107_static_extension.T_testFuncLayout___localname___S_179107_static_extension) class T_testFuncLayout___localname___S_179107 {
    public var _a : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _b : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _c : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public var _d : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public function new(?_a:stdgo.GoUIntptr, ?_b:stdgo.GoUIntptr, ?_c:stdgo.Pointer<stdgo.GoUInt8>, ?_d:stdgo.Pointer<stdgo.GoUInt8>) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_testFuncLayout___localname___S_179107(_a, _b, _c, _d);
    }
}

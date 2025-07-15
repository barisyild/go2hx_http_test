package _internal.bytes_test;
@:structInit @:using(_internal.bytes_test.Bytes_test_binoptest_static_extension.BinOpTest_static_extension) @:using(_internal.bytes_test.Bytes_test_binoptest_static_extension.BinOpTest_static_extension) class BinOpTest {
    public var _a : stdgo.GoString = "";
    public var _b : stdgo.GoString = "";
    public var _i : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_i:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new BinOpTest(_a, _b, _i);
    }
}

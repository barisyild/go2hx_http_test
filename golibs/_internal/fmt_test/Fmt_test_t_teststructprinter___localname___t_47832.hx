package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_t_teststructprinter___localname___t_47832_static_extension.T_testStructPrinter___localname___T_47832_static_extension) @:using(_internal.fmt_test.Fmt_test_t_teststructprinter___localname___t_47832_static_extension.T_testStructPrinter___localname___T_47832_static_extension) class T_testStructPrinter___localname___T_47832 {
    public var _a : stdgo.GoString = "";
    public var _b : stdgo.GoString = "";
    public var _c : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testStructPrinter___localname___T_47832(_a, _b, _c);
    }
}

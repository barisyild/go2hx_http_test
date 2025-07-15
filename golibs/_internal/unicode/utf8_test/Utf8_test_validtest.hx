package _internal.unicode.utf8_test;
@:structInit @:using(_internal.unicode.utf8_test.Utf8_test_validtest_static_extension.ValidTest_static_extension) @:using(_internal.unicode.utf8_test.Utf8_test_validtest_static_extension.ValidTest_static_extension) class ValidTest {
    public var _in : stdgo.GoString = "";
    public var _out : Bool = false;
    public function new(?_in:stdgo.GoString, ?_out:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_in", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_out", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new ValidTest(_in, _out);
    }
}

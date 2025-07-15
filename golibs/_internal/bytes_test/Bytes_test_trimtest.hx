package _internal.bytes_test;
@:structInit @:using(_internal.bytes_test.Bytes_test_trimtest_static_extension.TrimTest_static_extension) @:using(_internal.bytes_test.Bytes_test_trimtest_static_extension.TrimTest_static_extension) class TrimTest {
    public var _f : stdgo.GoString = "";
    public var _in : stdgo.GoString = "";
    public var _arg : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public function new(?_f:stdgo.GoString, ?_in:stdgo.GoString, ?_arg:stdgo.GoString, ?_out:stdgo.GoString) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_arg != null) this._arg = _arg;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_in", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_arg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_out", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new TrimTest(_f, _in, _arg, _out);
    }
}

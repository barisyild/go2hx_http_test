package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_scanfmultitest_static_extension.ScanfMultiTest_static_extension) @:using(_internal.fmt_test.Fmt_test_scanfmultitest_static_extension.ScanfMultiTest_static_extension) class ScanfMultiTest {
    public var _format : stdgo.GoString = "";
    public var _text : stdgo.GoString = "";
    public var _in : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public var _out : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public var _err : stdgo.GoString = "";
    public function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.Slice<stdgo.AnyInterface>, ?_out:stdgo.Slice<stdgo.AnyInterface>, ?_err:stdgo.GoString) {
        if (_format != null) this._format = _format;
        if (_text != null) this._text = _text;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_format", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_text", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_in", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }, { name : "_out", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new ScanfMultiTest(_format, _text, _in, _out, _err);
    }
}

package _internal.bytes_test;
@:structInit @:using(_internal.bytes_test.Bytes_test_replacetest_static_extension.ReplaceTest_static_extension) @:using(_internal.bytes_test.Bytes_test_replacetest_static_extension.ReplaceTest_static_extension) class ReplaceTest {
    public var _in : stdgo.GoString = "";
    public var _old : stdgo.GoString = "";
    public var _new_ : stdgo.GoString = "";
    public var _n : stdgo.GoInt = 0;
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_old:stdgo.GoString, ?_new_:stdgo.GoString, ?_n:stdgo.GoInt, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_old != null) this._old = _old;
        if (_new_ != null) this._new_ = _new_;
        if (_n != null) this._n = _n;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_in", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_old", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_new_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_out", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new ReplaceTest(_in, _old, _new_, _n, _out);
    }
}

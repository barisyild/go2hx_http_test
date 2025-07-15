package _internal.bytes_test;
@:structInit @:using(_internal.bytes_test.Bytes_test_repeattest_static_extension.RepeatTest_static_extension) @:using(_internal.bytes_test.Bytes_test_repeattest_static_extension.RepeatTest_static_extension) class RepeatTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public var _count : stdgo.GoInt = 0;
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_count:stdgo.GoInt) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_in", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_out", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_count", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new RepeatTest(_in, _out, _count);
    }
}

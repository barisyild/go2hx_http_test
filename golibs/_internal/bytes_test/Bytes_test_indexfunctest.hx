package _internal.bytes_test;
@:structInit @:using(_internal.bytes_test.Bytes_test_indexfunctest_static_extension.IndexFuncTest_static_extension) @:using(_internal.bytes_test.Bytes_test_indexfunctest_static_extension.IndexFuncTest_static_extension) class IndexFuncTest {
    public var _in : stdgo.GoString = "";
    public var _f : _internal.bytes_test.Bytes_test_t_predicate.T_predicate = ({} : _internal.bytes_test.Bytes_test_t_predicate.T_predicate);
    public var _first : stdgo.GoInt = 0;
    public var _last : stdgo.GoInt = 0;
    public function new(?_in:stdgo.GoString, ?_f:_internal.bytes_test.Bytes_test_t_predicate.T_predicate, ?_first:stdgo.GoInt, ?_last:stdgo.GoInt) {
        if (_in != null) this._in = _in;
        if (_f != null) this._f = _f;
        if (_first != null) this._first = _first;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_in", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_f", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotbytes_testdotbytes_test_t_predicatedott_predicate.__type___internaldotbytes_testdotBytes_test_t_predicatedotT_predicate }, optional : false }, { name : "_first", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_last", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new IndexFuncTest(_in, _f, _first, _last);
    }
}

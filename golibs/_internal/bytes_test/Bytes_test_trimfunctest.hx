package _internal.bytes_test;
@:structInit @:using(_internal.bytes_test.Bytes_test_trimfunctest_static_extension.TrimFuncTest_static_extension) @:using(_internal.bytes_test.Bytes_test_trimfunctest_static_extension.TrimFuncTest_static_extension) class TrimFuncTest {
    public var _f : _internal.bytes_test.Bytes_test_t_predicate.T_predicate = ({} : _internal.bytes_test.Bytes_test_t_predicate.T_predicate);
    public var _in : stdgo.GoString = "";
    public var _trimOut : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _leftOut : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _rightOut : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_f:_internal.bytes_test.Bytes_test_t_predicate.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.GoUInt8>) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_trimOut != null) this._trimOut = _trimOut;
        if (_leftOut != null) this._leftOut = _leftOut;
        if (_rightOut != null) this._rightOut = _rightOut;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_f", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotbytes_testdotbytes_test_t_predicatedott_predicate.__type___internaldotbytes_testdotBytes_test_t_predicatedotT_predicate }, optional : false }, { name : "_in", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_trimOut", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_leftOut", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_rightOut", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new TrimFuncTest(_f, _in, _trimOut, _leftOut, _rightOut);
    }
}

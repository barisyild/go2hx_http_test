package _internal.bytes_test;
@:structInit @:using(_internal.bytes_test.Bytes_test_t_testreadercopynothing___localname___nerr_5822_static_extension.T_testReaderCopyNothing___localname___nErr_5822_static_extension) @:using(_internal.bytes_test.Bytes_test_t_testreadercopynothing___localname___nerr_5822_static_extension.T_testReaderCopyNothing___localname___nErr_5822_static_extension) class T_testReaderCopyNothing___localname___nErr_5822 {
    public var _n : stdgo.GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_n:stdgo.GoInt64, ?_err:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new T_testReaderCopyNothing___localname___nErr_5822(_n, _err);
    }
}

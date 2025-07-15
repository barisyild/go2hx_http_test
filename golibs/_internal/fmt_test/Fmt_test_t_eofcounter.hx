package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_t_eofcounter_static_extension.T_eofCounter_static_extension) @:using(_internal.fmt_test.Fmt_test_t_eofcounter_static_extension.T_eofCounter_static_extension) class T_eofCounter {
    public var _reader : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = (null : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
    public var _eofCount : stdgo.GoInt = 0;
    public function new(?_reader:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>, ?_eofCount:stdgo.GoInt) {
        if (_reader != null) this._reader = _reader;
        if (_eofCount != null) this._eofCount = _eofCount;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_reader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader }) }, optional : false }, { name : "_eofCount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_eofCounter(_reader, _eofCount);
    }
}

package _internal.unicode.utf8_test;
@:structInit @:using(_internal.unicode.utf8_test.Utf8_test_t__testsequence___localname___info_8684_static_extension.T__testSequence___localname___info_8684_static_extension) @:using(_internal.unicode.utf8_test.Utf8_test_t__testsequence___localname___info_8684_static_extension.T__testSequence___localname___info_8684_static_extension) class T__testSequence___localname___info_8684 {
    public var _index : stdgo.GoInt = 0;
    public var _r : stdgo.GoInt32 = 0;
    public function new(?_index:stdgo.GoInt, ?_r:stdgo.GoInt32) {
        if (_index != null) this._index = _index;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }])));
    public function __copy__() {
        return new T__testSequence___localname___info_8684(_index, _r);
    }
}

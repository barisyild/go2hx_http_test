package _internal.unicode.utf8_test;
@:structInit @:using(_internal.unicode.utf8_test.Utf8_test_runelentest_static_extension.RuneLenTest_static_extension) @:using(_internal.unicode.utf8_test.Utf8_test_runelentest_static_extension.RuneLenTest_static_extension) class RuneLenTest {
    public var _r : stdgo.GoInt32 = 0;
    public var _size : stdgo.GoInt = 0;
    public function new(?_r:stdgo.GoInt32, ?_size:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }, { name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new RuneLenTest(_r, _size);
    }
}

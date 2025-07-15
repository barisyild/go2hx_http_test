package _internal.unicode.utf8_test;
@:structInit @:using(_internal.unicode.utf8_test.Utf8_test_utf8map_static_extension.Utf8Map_static_extension) @:using(_internal.unicode.utf8_test.Utf8_test_utf8map_static_extension.Utf8Map_static_extension) class Utf8Map {
    public var _r : stdgo.GoInt32 = 0;
    public var _str : stdgo.GoString = "";
    public function new(?_r:stdgo.GoInt32, ?_str:stdgo.GoString) {
        if (_r != null) this._r = _r;
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }, { name : "_str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new Utf8Map(_r, _str);
    }
}

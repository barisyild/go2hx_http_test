package _internal.unicode.utf8_test;
@:structInit @:using(_internal.unicode.utf8_test.Utf8_test_validrunetest_static_extension.ValidRuneTest_static_extension) @:using(_internal.unicode.utf8_test.Utf8_test_validrunetest_static_extension.ValidRuneTest_static_extension) class ValidRuneTest {
    public var _r : stdgo.GoInt32 = 0;
    public var _ok : Bool = false;
    public function new(?_r:stdgo.GoInt32, ?_ok:Bool) {
        if (_r != null) this._r = _r;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }, { name : "_ok", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new ValidRuneTest(_r, _ok);
    }
}

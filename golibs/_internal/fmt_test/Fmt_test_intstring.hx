package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_intstring_static_extension.IntString_static_extension) @:using(_internal.fmt_test.Fmt_test_intstring_static_extension.IntString_static_extension) class IntString {
    public var _i : stdgo.GoInt = 0;
    public var _s : stdgo.GoString = "";
    public function new(?_i:stdgo.GoInt, ?_s:stdgo.GoString) {
        if (_i != null) this._i = _i;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new IntString(_i, _s);
    }
}

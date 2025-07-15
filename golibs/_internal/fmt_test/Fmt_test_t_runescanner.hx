package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_t_runescanner_static_extension.T_runeScanner_static_extension) @:using(_internal.fmt_test.Fmt_test_t_runescanner_static_extension.T_runeScanner_static_extension) class T_runeScanner {
    public var _rune : stdgo.GoInt32 = 0;
    public var _size : stdgo.GoInt = 0;
    public function new(?_rune:stdgo.GoInt32, ?_size:stdgo.GoInt) {
        if (_rune != null) this._rune = _rune;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_rune", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }, { name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_runeScanner(_rune, _size);
    }
}

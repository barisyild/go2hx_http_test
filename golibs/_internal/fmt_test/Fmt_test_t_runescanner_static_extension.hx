package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_runeScanner_asInterface) class T_runeScanner_static_extension {
    @:keep
    @:tdfield
    static public function scan( _rs:stdgo.Ref<_internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner>, _state:stdgo._internal.fmt.Fmt_scanstate.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        @:recv var _rs:stdgo.Ref<_internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner> = _rs;
        var __tmp__ = _state.readRune(), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        (@:checkr _rs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune = _r;
        (@:checkr _rs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size = _size;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L985"
        return _err;
    }
}

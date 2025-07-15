package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TUI_asInterface) class TUI_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_tui.TUI):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_tui.TUI = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L39"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("UI: %d" : stdgo.GoString), new stdgo.AnyInterface((new stdgo.GoUIntptr(_v) : stdgo.GoUIntptr), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))))?.__copy__();
    }
}

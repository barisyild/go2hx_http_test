package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TB_asInterface) class TB_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_tb.TB):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_tb.TB = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L43"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("B: %t" : stdgo.GoString), new stdgo.AnyInterface((_v : Bool), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))))?.__copy__();
    }
}

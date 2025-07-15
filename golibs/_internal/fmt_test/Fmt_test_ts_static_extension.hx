package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TS_asInterface) class TS_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_ts.TS):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_ts.TS = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L44"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("S: %q" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
    }
}

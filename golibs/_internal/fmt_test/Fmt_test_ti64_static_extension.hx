package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TI64_asInterface) class TI64_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_ti64.TI64):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_ti64.TI64 = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L33"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("I64: %d" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))))?.__copy__();
    }
}

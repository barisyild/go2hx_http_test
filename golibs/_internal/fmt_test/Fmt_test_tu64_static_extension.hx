package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TU64_asInterface) class TU64_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_tu64.TU64):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_tu64.TU64 = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L38"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("U64: %d" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoUInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))))?.__copy__();
    }
}

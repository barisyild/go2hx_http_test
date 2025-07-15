package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TU32_asInterface) class TU32_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_tu32.TU32):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_tu32.TU32 = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L37"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("U32: %d" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoUInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))))?.__copy__();
    }
}

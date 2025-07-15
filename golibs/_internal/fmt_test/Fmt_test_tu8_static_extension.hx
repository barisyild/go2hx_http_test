package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TU8_asInterface) class TU8_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_tu8.TU8):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_tu8.TU8 = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L35"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("U8: %d" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))))?.__copy__();
    }
}

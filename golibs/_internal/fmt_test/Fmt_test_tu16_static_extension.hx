package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TU16_asInterface) class TU16_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_tu16.TU16):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_tu16.TU16 = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L36"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("U16: %d" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoUInt16), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint16_kind))))?.__copy__();
    }
}

package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TI16_asInterface) class TI16_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_ti16.TI16):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_ti16.TI16 = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L31"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("I16: %d" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoInt16), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int16_kind))))?.__copy__();
    }
}

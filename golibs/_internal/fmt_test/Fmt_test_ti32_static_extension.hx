package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TI32_asInterface) class TI32_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_ti32.TI32):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_ti32.TI32 = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L32"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("I32: %d" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))))?.__copy__();
    }
}

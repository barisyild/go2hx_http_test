package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.I_asInterface) class I_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:_internal.fmt_test.Fmt_test_i.I):stdgo.GoString {
        @:recv var _i:_internal.fmt_test.Fmt_test_i.I = _i;
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L73"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("<%d>" : stdgo.GoString), new stdgo.AnyInterface((_i : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
    }
}

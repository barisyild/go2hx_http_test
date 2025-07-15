package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TU_asInterface) class TU_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_tu.TU):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_tu.TU = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L34"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("U: %d" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoUInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint_kind))))?.__copy__();
    }
}

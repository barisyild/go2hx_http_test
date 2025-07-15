package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.G_asInterface) class G_static_extension {
    @:keep
    @:tdfield
    static public function goString( _g:_internal.fmt_test.Fmt_test_g.G):stdgo.GoString {
        @:recv var _g:_internal.fmt_test.Fmt_test_g.G = _g;
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L94"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("GoString(%d)" : stdgo.GoString), new stdgo.AnyInterface((_g : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
    }
}

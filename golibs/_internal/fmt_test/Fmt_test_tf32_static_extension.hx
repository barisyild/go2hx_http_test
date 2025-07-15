package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TF32_asInterface) class TF32_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_tf32.TF32):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_tf32.TF32 = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L41"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("F32: %f" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoFloat32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind))))?.__copy__();
    }
}

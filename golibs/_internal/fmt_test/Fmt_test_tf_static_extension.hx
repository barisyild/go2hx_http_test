package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TF_asInterface) class TF_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:_internal.fmt_test.Fmt_test_tf.TF):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_tf.TF = _v;
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L40"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("F: %f" : stdgo.GoString), new stdgo.AnyInterface((_v : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))))?.__copy__();
    }
}

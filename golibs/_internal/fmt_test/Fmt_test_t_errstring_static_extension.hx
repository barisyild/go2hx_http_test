package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_errString_asInterface) class T_errString_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:_internal.fmt_test.Fmt_test_t_errstring.T_errString):stdgo.GoString {
        @:recv var _e:_internal.fmt_test.Fmt_test_t_errstring.T_errString = _e;
        //"file:///Users/o/.go/go1.21.3/src/fmt/errors_test.go#L107"
        return (_e : stdgo.GoString)?.__copy__();
    }
}

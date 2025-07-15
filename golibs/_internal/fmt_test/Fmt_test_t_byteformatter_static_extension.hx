package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_byteFormatter_asInterface) class T_byteFormatter_static_extension {
    @:keep
    @:tdfield
    static public function format( _:_internal.fmt_test.Fmt_test_t_byteformatter.T_byteFormatter, _f:stdgo._internal.fmt.Fmt_state.State, __2:stdgo.GoInt32):Void {
        @:recv var _:_internal.fmt_test.Fmt_test_t_byteformatter.T_byteFormatter = _;
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L129"
        stdgo._internal.fmt.Fmt_fprint.fprint(_f, new stdgo.AnyInterface(("X" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
}

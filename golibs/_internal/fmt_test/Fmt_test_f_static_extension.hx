package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.F_asInterface) class F_static_extension {
    @:keep
    @:tdfield
    static public function format( _f:_internal.fmt_test.Fmt_test_f.F, _s:stdgo._internal.fmt.Fmt_state.State, _c:stdgo.GoInt32):Void {
        @:recv var _f:_internal.fmt_test.Fmt_test_f.F = _f;
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L88"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_s, ("<%c=F(%d)>" : stdgo.GoString), new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface((_f : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
    }
}

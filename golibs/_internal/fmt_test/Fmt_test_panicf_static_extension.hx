package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.PanicF_asInterface) class PanicF_static_extension {
    @:keep
    @:tdfield
    static public function format( _p:_internal.fmt_test.Fmt_test_panicf.PanicF, _f:stdgo._internal.fmt.Fmt_state.State, _c:stdgo.GoInt32):Void {
        @:recv var _p:_internal.fmt_test.Fmt_test_panicf.PanicF = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1721"
        throw ({
            final __t__ = _p._message;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        });
    }
}

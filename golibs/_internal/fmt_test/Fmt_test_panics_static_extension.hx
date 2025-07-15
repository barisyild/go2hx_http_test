package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.PanicS_asInterface) class PanicS_static_extension {
    @:keep
    @:tdfield
    static public function string( _p:_internal.fmt_test.Fmt_test_panics.PanicS):stdgo.GoString {
        @:recv var _p:_internal.fmt_test.Fmt_test_panics.PanicS = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1701"
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

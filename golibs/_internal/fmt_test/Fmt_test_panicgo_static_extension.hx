package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.PanicGo_asInterface) class PanicGo_static_extension {
    @:keep
    @:tdfield
    static public function goString( _p:_internal.fmt_test.Fmt_test_panicgo.PanicGo):stdgo.GoString {
        @:recv var _p:_internal.fmt_test.Fmt_test_panicgo.PanicGo = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1711"
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

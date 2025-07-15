package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.Recur_asInterface) class Recur_static_extension {
    @:keep
    @:tdfield
    static public function string( _r:stdgo.Ref<_internal.fmt_test.Fmt_test_recur.Recur>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.fmt_test.Fmt_test_recur.Recur> = _r;
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1763"
        {
            _internal.fmt_test.Fmt_test__recurcount._recurCount++;
            if ((_internal.fmt_test.Fmt_test__recurcount._recurCount > (10 : stdgo.GoInt) : Bool)) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._failed.value = true;
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1765"
                return ("FAIL" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1770"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("recur@%p value: %d" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_r, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recurdotrecur.__type___internaldotfmt_testdotFmt_test_recurdotRecur), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recurdotrecur.__type___internaldotfmt_testdotFmt_test_recurdotRecur }))), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
    }
}

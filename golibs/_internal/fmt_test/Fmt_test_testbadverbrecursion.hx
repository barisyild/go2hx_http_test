package _internal.fmt_test;
function testBadVerbRecursion(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _failed = @:assignType (false : Bool);
        var _failed__pointer__ = stdgo.Go.pointer(_failed);
        var _r = (stdgo.Go.setRef((new _internal.fmt_test.Fmt_test_recur.Recur((3 : stdgo.GoInt), _failed__pointer__) : _internal.fmt_test.Fmt_test_recur.Recur), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recurdotrecur.__type___internaldotfmt_testdotFmt_test_recurdotRecur })) : stdgo.Ref<_internal.fmt_test.Fmt_test_recur.Recur>);
        stdgo._internal.fmt.Fmt_sprintf.sprintf(("recur@%p value: %d\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.pointer(_r), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recurdotrecur.__type___internaldotfmt_testdotFmt_test_recurdotRecur }) }))), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1777"
        if (_failed) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1778"
            _t.error(new stdgo.AnyInterface(("fail with pointer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        _failed = false;
        _r = (stdgo.Go.setRef((new _internal.fmt_test.Fmt_test_recur.Recur((4 : stdgo.GoInt), _failed__pointer__) : _internal.fmt_test.Fmt_test_recur.Recur), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recurdotrecur.__type___internaldotfmt_testdotFmt_test_recurdotRecur })) : stdgo.Ref<_internal.fmt_test.Fmt_test_recur.Recur>);
        stdgo._internal.fmt.Fmt_sprintf.sprintf(("recur@%p, value: %d\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_r, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recurdotrecur.__type___internaldotfmt_testdotFmt_test_recurdotRecur), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recurdotrecur.__type___internaldotfmt_testdotFmt_test_recurdotRecur }))), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1783"
        if (_failed) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1784"
            _t.error(new stdgo.AnyInterface(("fail with value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }

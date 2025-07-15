package _internal.fmt_test;
function testEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ec = (stdgo.Go.setRef((new _internal.fmt_test.Fmt_test_t_eofcounter.T_eofCounter(stdgo._internal.strings.Strings_newreader.newReader(("123\n" : stdgo.GoString)), (0 : stdgo.GoInt)) : _internal.fmt_test.Fmt_test_t_eofcounter.T_eofCounter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_eofcounterdott_eofcounter.__type___internaldotfmt_testdotFmt_test_t_eofcounterdotT_eofCounter })) : stdgo.Ref<_internal.fmt_test.Fmt_test_t_eofcounter.T_eofCounter>);
        var _a:stdgo.GoInt = (0 : stdgo.GoInt), _a__pointer__ = stdgo.Go.pointer(_a);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanln.fscanln(stdgo.Go.asInterface(_ec, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_eofcounterdott_eofcounter.__type___internaldotfmt_testdotFmt_test_t_eofcounterdotT_eofCounter })), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L790"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L791"
            _t.error(new stdgo.AnyInterface(("unexpected error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L793"
        if (_n != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L794"
            _t.error(new stdgo.AnyInterface(("expected to scan one item, got" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L796"
        if ((@:checkr _ec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._eofCount != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L797"
            _t.error(new stdgo.AnyInterface(("expected zero EOFs" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _ec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._eofCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            (@:checkr _ec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._eofCount = (0 : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanln.fscanln(stdgo.Go.asInterface(_ec, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_eofcounterdott_eofcounter.__type___internaldotfmt_testdotFmt_test_t_eofcounterdotT_eofCounter })), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L801"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L802"
            _t.error(new stdgo.AnyInterface(("expected error scanning empty string" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L804"
        if (_n != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L805"
            _t.error(new stdgo.AnyInterface(("expected to scan zero items, got" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L807"
        if ((@:checkr _ec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._eofCount != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L808"
            _t.error(new stdgo.AnyInterface(("expected one EOF, got" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _ec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._eofCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }

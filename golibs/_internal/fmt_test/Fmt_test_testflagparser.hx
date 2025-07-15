package _internal.fmt_test;
function testFlagParser(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _flagprinter:_internal.fmt_test.Fmt_test_t_flagprinter.T_flagPrinter = ({} : _internal.fmt_test.Fmt_test_t_flagprinter.T_flagPrinter);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1508"
        if (_internal.fmt_test.Fmt_test__flagtests._flagtests != null) for (__2 => _tt in _internal.fmt_test.Fmt_test__flagtests._flagtests) {
            var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._in?.__copy__(), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_flagprinter, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_flagprinterdott_flagprinter.__type___internaldotfmt_testdotFmt_test_t_flagprinterdotT_flagPrinter })) : stdgo.Ref<_internal.fmt_test.Fmt_test_t_flagprinter.T_flagPrinter>), _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_flagprinterdott_flagprinter.__type___internaldotfmt_testdotFmt_test_t_flagprinterdotT_flagPrinter), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_flagprinterdott_flagprinter.__type___internaldotfmt_testdotFmt_test_t_flagprinterdotT_flagPrinter }))))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1510"
            if (_s != (_tt._out)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1511"
                _t.errorf(("Sprintf(%q, &flagprinter) => %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }

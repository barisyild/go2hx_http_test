package _internal.fmt_test;
function testFormatterPrintln(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f = @:assignType ((1 : _internal.fmt_test.Fmt_test_f.F) : _internal.fmt_test.Fmt_test_f.F);
        var _expect = @:assignType (("<v=F(1)>\n" : stdgo.GoString) : stdgo.GoString);
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(stdgo.Go.asInterface(_f, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_fdotf.__type___internaldotfmt_testdotFmt_test_fdotF), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_fdotf.__type___internaldotfmt_testdotFmt_test_fdotF)), new stdgo.AnyInterface(("\n" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1637"
        if (_s != (_expect)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1638"
            _t.errorf(("Sprint wrong with Formatter: expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        _s = stdgo._internal.fmt.Fmt_sprintln.sprintln(new stdgo.AnyInterface(stdgo.Go.asInterface(_f, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_fdotf.__type___internaldotfmt_testdotFmt_test_fdotF), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_fdotf.__type___internaldotfmt_testdotFmt_test_fdotF)))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1641"
        if (_s != (_expect)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1642"
            _t.errorf(("Sprintln wrong with Formatter: expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_f, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_fdotf.__type___internaldotfmt_testdotFmt_test_fdotF), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_fdotf.__type___internaldotfmt_testdotFmt_test_fdotF)))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1645"
        if (_s != (_expect)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1646"
            _t.errorf(("Sprintf wrong with Formatter: expected %q got %q" : stdgo.GoString), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }

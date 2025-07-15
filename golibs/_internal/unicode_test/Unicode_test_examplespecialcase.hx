package _internal.unicode_test;
function exampleSpecialCase():Void {
        var _t = (stdgo._internal.unicode.Unicode_turkishcase.turkishCase : stdgo._internal.unicode.Unicode_specialcase.SpecialCase);
        {};
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L180"
        stdgo._internal.fmt.Fmt_printf.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toLower((105 : stdgo.GoInt32))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L181"
        stdgo._internal.fmt.Fmt_printf.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toTitle((105 : stdgo.GoInt32))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L182"
        stdgo._internal.fmt.Fmt_printf.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toUpper((105 : stdgo.GoInt32))));
        {};
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L185"
        stdgo._internal.fmt.Fmt_printf.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toLower((304 : stdgo.GoInt32))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L186"
        stdgo._internal.fmt.Fmt_printf.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toTitle((304 : stdgo.GoInt32))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L187"
        stdgo._internal.fmt.Fmt_printf.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toUpper((304 : stdgo.GoInt32))));
    }

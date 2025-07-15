package _internal.unicode_test;
function exampleIsSpace():Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L247"
        stdgo._internal.fmt.Fmt_printf.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_isspace.isSpace((32 : stdgo.GoInt32))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L248"
        stdgo._internal.fmt.Fmt_printf.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_isspace.isSpace((10 : stdgo.GoInt32))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L249"
        stdgo._internal.fmt.Fmt_printf.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_isspace.isSpace((9 : stdgo.GoInt32))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L250"
        stdgo._internal.fmt.Fmt_printf.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_isspace.isSpace((97 : stdgo.GoInt32))));
    }

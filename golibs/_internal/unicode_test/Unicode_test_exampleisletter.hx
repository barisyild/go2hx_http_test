package _internal.unicode_test;
function exampleIsLetter():Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L215"
        stdgo._internal.fmt.Fmt_printf.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_isletter.isLetter((65 : stdgo.GoInt32))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L216"
        stdgo._internal.fmt.Fmt_printf.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_isletter.isLetter((55 : stdgo.GoInt32))));
    }

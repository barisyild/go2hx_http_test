package _internal.unicode_test;
function example_is():Void {
        {};
        //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L18"
        if (("\x085Ὂg̀9! ℃ᾭG" : stdgo.GoString) != null) for (__0 => _c in ("\x085Ὂg̀9! ℃ᾭG" : stdgo.GoString)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L19"
            stdgo._internal.fmt.Fmt_printf.printf(("For %q:\n" : stdgo.GoString), stdgo.Go.toInterface(_c));
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L20"
            if (stdgo._internal.unicode.Unicode_iscontrol.isControl(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L21"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis control rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L23"
            if (stdgo._internal.unicode.Unicode_isdigit.isDigit(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L24"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis digit rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L26"
            if (stdgo._internal.unicode.Unicode_isgraphic.isGraphic(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L27"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis graphic rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L29"
            if (stdgo._internal.unicode.Unicode_isletter.isLetter(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L30"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis letter rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L32"
            if (stdgo._internal.unicode.Unicode_islower.isLower(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L33"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis lower case rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L35"
            if (stdgo._internal.unicode.Unicode_ismark.isMark(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L36"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis mark rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L38"
            if (stdgo._internal.unicode.Unicode_isnumber.isNumber(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L39"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis number rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L41"
            if (stdgo._internal.unicode.Unicode_isprint.isPrint(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L42"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis printable rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L44"
            if (!stdgo._internal.unicode.Unicode_isprint.isPrint(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L45"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis not printable rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L47"
            if (stdgo._internal.unicode.Unicode_ispunct.isPunct(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L48"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis punct rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L50"
            if (stdgo._internal.unicode.Unicode_isspace.isSpace(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L51"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis space rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L53"
            if (stdgo._internal.unicode.Unicode_issymbol.isSymbol(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L54"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis symbol rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L56"
            if (stdgo._internal.unicode.Unicode_istitle.isTitle(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L57"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis title case rune" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L59"
            if (stdgo._internal.unicode.Unicode_isupper.isUpper(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/example_test.go#L60"
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis upper case rune" : stdgo.GoString)));
            };
        };
    }

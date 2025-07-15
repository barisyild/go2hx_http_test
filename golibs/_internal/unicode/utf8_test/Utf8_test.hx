package _internal.unicode.utf8_test;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map, __tmp__1 = _internal.unicode.utf8_test.Utf8_test__surrogatemap._surrogateMap, __tmp__2 = _internal.unicode.utf8_test.Utf8_test__teststrings._testStrings, __tmp__3 = _internal.unicode.utf8_test.Utf8_test__invalidsequencetests._invalidSequenceTests, __tmp__4 = _internal.unicode.utf8_test.Utf8_test__runecounttests._runecounttests, __tmp__5 = _internal.unicode.utf8_test.Utf8_test__runelentests._runelentests, __tmp__6 = _internal.unicode.utf8_test.Utf8_test__validtests._validTests, __tmp__7 = _internal.unicode.utf8_test.Utf8_test__validrunetests._validrunetests, __tmp__8 = _internal.unicode.utf8_test.Utf8_test__ascii100000._ascii100000;
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L17"
            if (false) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L18"
                throw new stdgo.AnyInterface(("utf8.MaxRune is wrong" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L20"
            if (false) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L21"
                throw new stdgo.AnyInterface(("utf8.RuneError is wrong" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            {};
            var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L630"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_b.len() < (100000 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L631"
                    if ((_i % (100 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L632"
                        _b.writeString(("日本語日本語日本語日" : stdgo.GoString));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L634"
                        _b.writeString(("0123456789" : stdgo.GoString));
                    };
                    _i++;
                };
            };
            _internal.unicode.utf8_test.Utf8_test__longstringmostlyascii._longStringMostlyASCII = (_b.string() : stdgo.GoString)?.__copy__();
            _internal.unicode.utf8_test.Utf8_test__longstringjapanese._longStringJapanese = stdgo._internal.strings.Strings_repeat.repeat(("日本語日本語日本語日" : stdgo.GoString), (3333 : stdgo.GoInt))?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

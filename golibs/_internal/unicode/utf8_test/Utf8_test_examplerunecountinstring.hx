package _internal.unicode.utf8_test;
function exampleRuneCountInString():Void {
        var _str = @:assignType (("Hello, 世界" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L159"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(("bytes =" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_str.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L160"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(("runes =" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_str?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
    }

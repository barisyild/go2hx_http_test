package _internal.unicode.utf8_test;
function exampleFullRuneInString():Void {
        var _str = @:assignType (("世" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L141"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_fullruneinstring.fullRuneInString(_str?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L142"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_fullruneinstring.fullRuneInString((_str.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
    }

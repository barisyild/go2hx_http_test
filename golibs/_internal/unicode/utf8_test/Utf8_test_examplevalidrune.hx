package _internal.unicode.utf8_test;
function exampleValidRune():Void {
        var _valid = @:assignType (97 : stdgo.GoInt32);
        var _invalid = @:assignType ((268435455 : stdgo.GoInt32) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L200"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_valid), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L201"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_invalid), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
    }

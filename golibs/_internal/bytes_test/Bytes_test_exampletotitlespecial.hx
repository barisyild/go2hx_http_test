package _internal.bytes_test;
function exampleToTitleSpecial():Void {
        var _str = ((("ahoj vývojári golang" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _totitle = stdgo._internal.bytes.Bytes_totitlespecial.toTitleSpecial(stdgo._internal.unicode.Unicode_azericase.azeriCase, _str);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L506"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface((("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L507"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface((("ToTitle : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }

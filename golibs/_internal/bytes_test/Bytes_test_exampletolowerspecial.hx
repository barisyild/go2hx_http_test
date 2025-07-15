package _internal.bytes_test;
function exampleToLowerSpecial():Void {
        var _str = ((("AHOJ VÝVOJÁRİ GOLANG" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _totitle = stdgo._internal.bytes.Bytes_tolowerspecial.toLowerSpecial(stdgo._internal.unicode.Unicode_azericase.azeriCase, _str);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L602"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface((("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L603"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface((("ToLower : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }

package _internal.unicode.utf8_test;
function exampleDecodeLastRune():Void {
        var _b = ((("Hello, 世界" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L15"
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L17"
            stdgo._internal.fmt.Fmt_printf.printf(("%c %v\n" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            _b = (_b.__slice__(0, ((_b.length) - _size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }

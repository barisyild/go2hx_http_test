package _internal.bytes_test;
function exampleBuffer_Next():Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L82"
        _b.grow((64 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L83"
        _b.write(((("abcde" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L84"
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), new stdgo.AnyInterface((_b.next((2 : stdgo.GoInt)) : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L85"
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), new stdgo.AnyInterface((_b.next((2 : stdgo.GoInt)) : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L86"
        stdgo._internal.fmt.Fmt_printf.printf(("%s" : stdgo.GoString), new stdgo.AnyInterface((_b.next((2 : stdgo.GoInt)) : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }

package _internal.bytes_test;
function exampleBuffer_Len():Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L74"
        _b.grow((64 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L75"
        _b.write(((("abcde" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L76"
        stdgo._internal.fmt.Fmt_printf.printf(("%d" : stdgo.GoString), new stdgo.AnyInterface(_b.len(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
    }

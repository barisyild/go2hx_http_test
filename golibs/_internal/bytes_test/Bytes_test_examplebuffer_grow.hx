package _internal.bytes_test;
function exampleBuffer_Grow():Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L65"
        _b.grow((64 : stdgo.GoInt));
        var _bb = _b.bytes();
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L67"
        _b.write(((("64 bytes or fewer" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L68"
        stdgo._internal.fmt.Fmt_printf.printf(("%q" : stdgo.GoString), new stdgo.AnyInterface((_bb.__slice__(0, _b.len()) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
    }

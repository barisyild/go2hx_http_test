package _internal.bytes_test;
function exampleBuffer_Cap():Void {
        var _buf1 = stdgo._internal.bytes.Bytes_newbuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _buf2 = stdgo._internal.bytes.Bytes_newbuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L56"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_buf1.cap(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L57"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_buf2.cap(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
    }

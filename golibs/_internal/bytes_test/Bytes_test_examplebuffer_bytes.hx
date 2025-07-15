package _internal.bytes_test;
function exampleBuffer_Bytes():Void {
        var _buf = @:assignType (new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L36"
        _buf.write((new stdgo.Slice<stdgo.GoUInt8>(11, 11, ...[
(104 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(119 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(100 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L37"
        stdgo._internal.os.Os_stdout.stdout.write(_buf.bytes());
    }

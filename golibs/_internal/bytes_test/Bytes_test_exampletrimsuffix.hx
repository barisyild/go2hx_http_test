package _internal.bytes_test;
function exampleTrimSuffix():Void {
        var _b = ((("Hello, goodbye, etc!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.bytes.Bytes_trimsuffix.trimSuffix(_b, ((("goodbye, etc!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _b = stdgo._internal.bytes.Bytes_trimsuffix.trimSuffix(_b, ((("gopher" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _b = (_b.__append__(...(stdgo._internal.bytes.Bytes_trimsuffix.trimSuffix(((("world!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ((("x!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L574"
        stdgo._internal.os.Os_stdout.stdout.write(_b);
    }

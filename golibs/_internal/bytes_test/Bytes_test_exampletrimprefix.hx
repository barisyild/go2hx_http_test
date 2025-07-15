package _internal.bytes_test;
function exampleTrimPrefix():Void {
        var _b = ((("Goodbye,, world!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.bytes.Bytes_trimprefix.trimPrefix(_b, ((("Goodbye," : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _b = stdgo._internal.bytes.Bytes_trimprefix.trimPrefix(_b, ((("See ya," : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L560"
        stdgo._internal.fmt.Fmt_printf.printf(("Hello%s" : stdgo.GoString), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
    }

package _internal.bytes_test;
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(3, 3, ...[((("foo" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ((("bar" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ((("baz" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L356"
        stdgo._internal.fmt.Fmt_printf.printf(("%s" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.bytes.Bytes_join.join(_s, (((", " : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
    }

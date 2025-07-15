package _internal.bytes_test;
function exampleSplitN():Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L472"
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.bytes.Bytes_splitn.splitN(((("a,b,c" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ((("," : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (2 : stdgo.GoInt)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))));
        var _z = stdgo._internal.bytes.Bytes_splitn.splitN(((("a,b,c" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ((("," : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L474"
        stdgo._internal.fmt.Fmt_printf.printf(("%q (nil = %v)\n" : stdgo.GoString), new stdgo.AnyInterface(_z, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))), new stdgo.AnyInterface(_z == null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
    }

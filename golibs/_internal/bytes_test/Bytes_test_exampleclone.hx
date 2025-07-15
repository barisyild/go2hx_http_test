package _internal.bytes_test;
function exampleClone():Void {
        var _b = ((("abc" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _clone = stdgo._internal.bytes.Bytes_clone.clone(_b);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L129"
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), new stdgo.AnyInterface(_clone, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        _clone[(0 : stdgo.GoInt)] = (100 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L131"
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L132"
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), new stdgo.AnyInterface(_clone, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
    }

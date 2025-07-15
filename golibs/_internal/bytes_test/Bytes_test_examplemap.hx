package _internal.bytes_test;
function exampleMap():Void {
        var _rot13 = @:assignType (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L402"
            if (((_r >= (65 : stdgo.GoInt32) : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L404"
                return ((65 : stdgo.GoInt32) + ((((_r - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32);
            } else if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L406"
                return ((97 : stdgo.GoInt32) + ((((_r - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32);
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L408"
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L410"
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.bytes.Bytes_map_.map_(_rot13, ((("\'Twas brillig and the slithy gopher..." : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
    }

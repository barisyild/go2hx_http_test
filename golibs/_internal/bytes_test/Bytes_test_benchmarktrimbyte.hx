package _internal.bytes_test;
function benchmarkTrimByte(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = ((("  the quick brown fox   " : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2212"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2213"
                stdgo._internal.bytes.Bytes_trim.trim(_x, (" " : stdgo.GoString));
                _i++;
            };
        };
    }

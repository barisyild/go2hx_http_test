package _internal.bytes_test;
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _sep = ((("/" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2067"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2068"
                stdgo._internal.bytes.Bytes_split.split(_internal.bytes_test.Bytes_test__benchinputhard._benchInputHard, _sep);
                _i++;
            };
        };
    }

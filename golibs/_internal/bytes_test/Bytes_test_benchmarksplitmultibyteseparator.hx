package _internal.bytes_test;
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _sep = ((("hello" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2074"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2075"
                stdgo._internal.bytes.Bytes_split.split(_internal.bytes_test.Bytes_test__benchinputhard._benchInputHard, _sep);
                _i++;
            };
        };
    }

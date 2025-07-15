package _internal.bytes_test;
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _sep = ((("hello" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2088"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2089"
                stdgo._internal.bytes.Bytes_splitn.splitN(_internal.bytes_test.Bytes_test__benchinputhard._benchInputHard, _sep, (10 : stdgo.GoInt));
                _i++;
            };
        };
    }

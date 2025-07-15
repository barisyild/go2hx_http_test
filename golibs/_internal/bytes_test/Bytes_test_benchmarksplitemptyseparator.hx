package _internal.bytes_test;
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2060"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2061"
                stdgo._internal.bytes.Bytes_split.split(_internal.bytes_test.Bytes_test__benchinputhard._benchInputHard, (null : stdgo.Slice<stdgo.GoUInt8>));
                _i++;
            };
        };
    }

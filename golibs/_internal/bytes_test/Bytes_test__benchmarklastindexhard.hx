package _internal.bytes_test;
function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _sep:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2033"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2034"
                stdgo._internal.bytes.Bytes_lastindex.lastIndex(_internal.bytes_test.Bytes_test__benchinputhard._benchInputHard, _sep);
                _i++;
            };
        };
    }

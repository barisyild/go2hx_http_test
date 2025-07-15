package _internal.bytes_test;
function benchmarkRepeat(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2094"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2095"
                stdgo._internal.bytes.Bytes_repeat.repeat(((("-" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (80 : stdgo.GoInt));
                _i++;
            };
        };
    }

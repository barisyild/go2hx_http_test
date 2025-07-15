package _internal.bytes_test;
function benchmarkWriteByte(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L652"
        _b.setBytes((4096i64 : stdgo.GoInt64));
        var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L654"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L655"
                _buf.reset();
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L656"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (4096 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L657"
                        _buf.writeByte((120 : stdgo.GoUInt8));
                        _i++;
                    };
                };
                _i++;
            };
        };
    }

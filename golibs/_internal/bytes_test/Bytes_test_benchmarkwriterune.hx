package _internal.bytes_test;
function benchmarkWriteRune(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        {};
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L665"
        _b.setBytes((((4096 : stdgo.GoInt) * stdgo._internal.unicode.utf8.Utf8_runelen.runeLen((9786 : stdgo.GoInt32)) : stdgo.GoInt) : stdgo.GoInt64));
        var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L667"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L668"
                _buf.reset();
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L669"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (4096 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L670"
                        _buf.writeRune((9786 : stdgo.GoInt32));
                        _i++;
                    };
                };
                _i++;
            };
        };
    }

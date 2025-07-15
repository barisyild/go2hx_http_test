package _internal.bytes_test;
function benchmarkBufferFullSmallReads(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L691"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L693"
                _b.write(_buf);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L694"
                while (((_b.len() + (20 : stdgo.GoInt) : stdgo.GoInt) < _b.cap() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L695"
                    _b.write((_buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L697"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (5120 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L698"
                        _b.read((_buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L699"
                        _b.write((_buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _i++;
                    };
                };
                _i++;
            };
        };
    }

package _internal.bytes_test;
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L678"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L680"
                _b.write((_buf.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L681"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (5120 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L682"
                        _b.write(_buf);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L683"
                        _b.read(_buf);
                        _i++;
                    };
                };
                _i++;
            };
        };
    }

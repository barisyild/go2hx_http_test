package _internal.bytes_test;
function benchmarkBufferAppendNoCopy(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _bb:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L721"
        _bb.grow((16777216 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L722"
        _b.setBytes((_bb.available() : stdgo.GoInt64));
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L723"
        _b.reportAllocs();
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L724"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L725"
                _bb.reset();
var _b = _bb.availableBuffer();
_b = (_b.__slice__(0, _b.capacity) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L728"
                _bb.write(_b);
                _i++;
            };
        };
    }

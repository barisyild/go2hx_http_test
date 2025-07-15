package _internal.bytes_test;
function testBufferGrowth(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L633"
        _b.write((_buf.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var _cap0:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L635"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (5120 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L636"
                _b.write(_buf);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L637"
                _b.read(_buf);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L638"
                if (_i == ((0 : stdgo.GoInt))) {
                    _cap0 = _b.cap();
                };
                _i++;
            };
        };
        var _cap1 = @:assignType (_b.cap() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L645"
        if ((_cap1 > (_cap0 * (3 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L646"
            _t.errorf(("buffer cap = %d; too big (grew from %d)" : stdgo.GoString), new stdgo.AnyInterface(_cap1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_cap0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }

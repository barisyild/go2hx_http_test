package _internal.bytes_test;
function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L243"
        _buf.write(((("test" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _n = @:assignType (_buf.cap() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L245"
        if (_n != ((10 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L246"
            _t.errorf(("expected 10, got %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }

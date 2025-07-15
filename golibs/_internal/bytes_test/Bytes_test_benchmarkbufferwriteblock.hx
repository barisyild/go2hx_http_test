package _internal.bytes_test;
function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _block = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L706"
        if ((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4096 : stdgo.GoInt), (65536 : stdgo.GoInt), (1048576 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) != null) for (__0 => _n in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4096 : stdgo.GoInt), (65536 : stdgo.GoInt), (1048576 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L707"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("N%d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L708"
                _b.reportAllocs();
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L709"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        var _bb:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L711"
                        while ((_bb.len() < _n : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L712"
                            _bb.write(_block);
                        };
                        _i++;
                    };
                };
            });
        };
    }

package _internal.bytes_test;
function benchmarkEqual(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L619"
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
            var _buf1 = (_buf.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _buf2 = (_buf.__slice__((1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L623"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                    var _eq = @:assignType (stdgo._internal.bytes.Bytes_equal.equal(_buf1, _buf2) : Bool);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L625"
                    if (!_eq) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L626"
                        _b.fatal(new stdgo.AnyInterface(("bad equal" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                    _i++;
                };
            };
        });
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (6 : stdgo.GoInt), (9 : stdgo.GoInt), (15 : stdgo.GoInt), (16 : stdgo.GoInt), (20 : stdgo.GoInt), (32 : stdgo.GoInt), (4096 : stdgo.GoInt), (4194304 : stdgo.GoInt), (67108864 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L632"
        _internal.bytes_test.Bytes_test__benchbytes._benchBytes(_b, _sizes, _internal.bytes_test.Bytes_test__bmequal._bmEqual(stdgo._internal.bytes.Bytes_equal.equal));
    }

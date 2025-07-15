package _internal.bytes_test;
function benchmarkIndex(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L688"
        _internal.bytes_test.Bytes_test__benchbytes._benchBytes(_b, _internal.bytes_test.Bytes_test__indexsizes._indexSizes, function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _n:stdgo.GoInt):Void {
            var _buf = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L691"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                    var _j = @:assignType (stdgo._internal.bytes.Bytes_index.index(_buf, (_buf.__slice__((_n - (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L693"
                    if (_j != ((_n - (7 : stdgo.GoInt) : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L694"
                        _b.fatal(new stdgo.AnyInterface(("bad index" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _i++;
                };
            };
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        });
    }

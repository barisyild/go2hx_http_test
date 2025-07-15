package _internal.bytes_test;
function benchmarkCountSingle(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L748"
        _internal.bytes_test.Bytes_test__benchbytes._benchBytes(_b, _internal.bytes_test.Bytes_test__indexsizes._indexSizes, function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _n:stdgo.GoInt):Void {
            var _buf = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            var _step = @:assignType (8 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L751"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (_buf.length) : Bool)) {
                    _buf[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                    _i = (_i + (_step) : stdgo.GoInt);
                };
            };
            var _expect = @:assignType ((((_buf.length) + ((_step - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) / _step : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L755"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                    var _j = @:assignType (stdgo._internal.bytes.Bytes_count.count(_buf, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L757"
                    if (_j != (_expect)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L758"
                        _b.fatal(new stdgo.AnyInterface(("bad count" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L761"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (_buf.length) : Bool)) {
                    _buf[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                    _i++;
                };
            };
        });
    }

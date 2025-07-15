package _internal.bytes_test;
function testNext(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _tmp = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L432"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L433"
                {
                    var _j = @:assignType (_i : stdgo.GoInt);
                    while ((_j <= (5 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L434"
                        {
                            var _k = @:assignType (0 : stdgo.GoInt);
                            while ((_k <= (6 : stdgo.GoInt) : Bool)) {
                                var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer((_b.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.GoUInt8>));
var __tmp__ = _buf.read((_tmp.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L441"
                                if (_n != (_i)) {
                                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L442"
                                    _t.fatalf(("Read %d returned %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                };
var _bb = _buf.next(_k);
var _want = @:assignType (_k : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L446"
                                if ((_want > (_j - _i : stdgo.GoInt) : Bool)) {
                                    _want = (_j - _i : stdgo.GoInt);
                                };
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L449"
                                if ((_bb.length) != (_want)) {
                                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L450"
                                    _t.fatalf(("in %d,%d: len(Next(%d)) == %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_bb.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                };
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L452"
                                if (_bb != null) for (_l => _v in _bb) {
                                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L453"
                                    if (_v != (((_l + _i : stdgo.GoInt) : stdgo.GoUInt8))) {
                                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L454"
                                        _t.fatalf(("in %d,%d: Next(%d)[%d] = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_l, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), new stdgo.AnyInterface((_l + _i : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                    };
                                };
                                _k++;
                            };
                        };
                        _j++;
                    };
                };
                _i++;
            };
        };
    }

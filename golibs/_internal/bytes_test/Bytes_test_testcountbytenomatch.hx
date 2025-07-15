package _internal.bytes_test;
function testCountByteNoMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((5015 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _windows = (new stdgo.Slice<stdgo.GoInt>(14, 14, ...[
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(15 : stdgo.GoInt),
(16 : stdgo.GoInt),
(17 : stdgo.GoInt),
(31 : stdgo.GoInt),
(32 : stdgo.GoInt),
(33 : stdgo.GoInt),
(63 : stdgo.GoInt),
(64 : stdgo.GoInt),
(65 : stdgo.GoInt),
(128 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L506"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= (_b.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L507"
                if (_windows != null) for (__0 => _window in _windows) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L508"
                    if ((_window > ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length) : Bool)) {
                        _window = ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L512"
                    {
                        var _j = @:assignType (0 : stdgo.GoInt);
                        while ((_j < _window : Bool)) {
                            _b[(_i + _j : stdgo.GoInt)] = (100 : stdgo.GoUInt8);
                            _j++;
                        };
                    };
                    var _p = @:assignType (stdgo._internal.bytes.Bytes_count.count((_b.__slice__(_i, (_i + _window : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L517"
                    if (_p != ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L518"
                        _t.errorf(("TestCountByteNoMatch(%q, 0) = %d" : stdgo.GoString), new stdgo.AnyInterface((_b.__slice__(_i, (_i + _window : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L520"
                    {
                        var _j = @:assignType (0 : stdgo.GoInt);
                        while ((_j < _window : Bool)) {
                            _b[(_i + _j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                            _j++;
                        };
                    };
                };
                _i++;
            };
        };
    }

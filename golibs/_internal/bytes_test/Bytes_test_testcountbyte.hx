package _internal.bytes_test;
function testCountByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
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
        var _testCountWindow = @:assignType (function(_i:stdgo.GoInt, _window:stdgo.GoInt):Void {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L467"
            {
                var _j = @:assignType (0 : stdgo.GoInt);
                while ((_j < _window : Bool)) {
                    _b[(_i + _j : stdgo.GoInt)] = (100 : stdgo.GoUInt8);
var _p = @:assignType (stdgo._internal.bytes.Bytes_count.count((_b.__slice__(_i, (_i + _window : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(100 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L470"
                    if (_p != ((_j + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L471"
                        _t.errorf(("TestCountByte.Count(%q, 100) = %d" : stdgo.GoString), new stdgo.AnyInterface((_b.__slice__(_i, (_i + _window : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _j++;
                };
            };
        } : (stdgo.GoInt, stdgo.GoInt) -> Void);
        var _maxWnd = @:assignType (_windows[((_windows.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L478"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= ((2 : stdgo.GoInt) * _maxWnd : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L479"
                if (_windows != null) for (__0 => _window in _windows) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L480"
                    if ((_window > ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length) : Bool)) {
                        _window = ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L483"
                    _testCountWindow(_i, _window);
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L484"
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
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L489"
        {
            var _i = @:assignType ((4096 : stdgo.GoInt) - ((_maxWnd + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            while ((_i < (_b.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L490"
                if (_windows != null) for (__0 => _window in _windows) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L491"
                    if ((_window > ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length) : Bool)) {
                        _window = ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L494"
                    _testCountWindow(_i, _window);
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L495"
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

package _internal.bytes_test;
function testNotEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _size = (128 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L101"
        if (stdgo._internal.testing.Testing_short.short()) {
            _size = (32 : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L107"
        {
            var _len = @:assignType (0 : stdgo.GoInt);
            while ((_len <= _size : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L108"
                {
                    var _x = @:assignType (0 : stdgo.GoInt);
                    while ((_x <= (_size - _len : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L109"
                        {
                            var _y = @:assignType (0 : stdgo.GoInt);
                            while ((_y <= (_size - _len : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L110"
                                {
                                    var _diffpos = @:assignType (_x : stdgo.GoInt);
                                    while ((_diffpos < (_x + _len : stdgo.GoInt) : Bool)) {
                                        _a[(_diffpos : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L112"
                                        if ((stdgo._internal.bytes.Bytes_equal.equal((_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) || stdgo._internal.bytes.Bytes_equal.equal((_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L113"
                                            _t.errorf(("NotEqual(%d, %d, %d, %d) = true" : stdgo.GoString), new stdgo.AnyInterface(_len, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_y, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_diffpos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                        };
_a[(_diffpos : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                        _diffpos++;
                                    };
                                };
                                _y++;
                            };
                        };
                        _x++;
                    };
                };
                _len++;
            };
        };
    }

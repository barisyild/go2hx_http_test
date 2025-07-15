package _internal.bytes_test;
function testEqualExhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _size = (128 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L72"
        if (stdgo._internal.testing.Testing_short.short()) {
            _size = (32 : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b_init = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L79"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _size : Bool)) {
                _a[(_i : stdgo.GoInt)] = (((17 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoUInt8);
_b_init[(_i : stdgo.GoInt)] = ((((23 : stdgo.GoInt) * _i : stdgo.GoInt) + (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L84"
        {
            var _len = @:assignType (0 : stdgo.GoInt);
            while ((_len <= _size : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L85"
                {
                    var _x = @:assignType (0 : stdgo.GoInt);
                    while ((_x <= (_size - _len : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L86"
                        {
                            var _y = @:assignType (0 : stdgo.GoInt);
                            while ((_y <= (_size - _len : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L87"
                                _b.__copyTo__(_b_init);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L88"
                                (_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L89"
                                if ((!stdgo._internal.bytes.Bytes_equal.equal((_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) || !stdgo._internal.bytes.Bytes_equal.equal((_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L90"
                                    _t.errorf(("Equal(%d, %d, %d) = false" : stdgo.GoString), new stdgo.AnyInterface(_len, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_y, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
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

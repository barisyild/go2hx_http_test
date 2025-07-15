package _internal.bytes_test;
function testIndexByteSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((5015 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L381"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= ((_b.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L382"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (15 : stdgo.GoInt) : Bool)) {
                        _b[(_i + _j : stdgo.GoInt)] = (((100 : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUInt8);
                        _j++;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L385"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (15 : stdgo.GoInt) : Bool)) {
                        var _p = @:assignType (stdgo._internal.bytes.Bytes_indexbyte.indexByte((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (((100 : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L387"
                        if (_p != (_j)) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L388"
                            _t.errorf(("IndexByte(%q, %d) = %d" : stdgo.GoString), new stdgo.AnyInterface((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(((100 : stdgo.GoInt) + _j : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                        _j++;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L391"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (15 : stdgo.GoInt) : Bool)) {
                        _b[(_i + _j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        _j++;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L396"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= ((_b.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L397"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (15 : stdgo.GoInt) : Bool)) {
                        _b[(_i + _j : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                        _j++;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L400"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (15 : stdgo.GoInt) : Bool)) {
                        var _p = @:assignType (stdgo._internal.bytes.Bytes_indexbyte.indexByte((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUInt8)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L402"
                        if (_p != ((-1 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L403"
                            _t.errorf(("IndexByte(%q, %d) = %d" : stdgo.GoString), new stdgo.AnyInterface((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                        _j++;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L406"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (15 : stdgo.GoInt) : Bool)) {
                        _b[(_i + _j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        _j++;
                    };
                };
                _i++;
            };
        };
    }

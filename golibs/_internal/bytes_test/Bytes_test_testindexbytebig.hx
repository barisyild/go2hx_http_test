package _internal.bytes_test;
function testIndexByteBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n = (1024 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L327"
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (128 : stdgo.GoInt);
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L331"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _b1 = (_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L334"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (_b1.length) : Bool)) {
                        _b1[(_j : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
var _pos = @:assignType (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b1, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L337"
                        if (_pos != (_j)) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L338"
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), new stdgo.AnyInterface(_b1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_pos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
_b1[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
_pos = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b1, (120 : stdgo.GoUInt8));
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L342"
                        if (_pos != ((-1 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L343"
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), new stdgo.AnyInterface(_b1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_pos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                        _j++;
                    };
                };
_b1 = (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L348"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (_b1.length) : Bool)) {
                        _b1[(_j : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
var _pos = @:assignType (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b1, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L351"
                        if (_pos != (_j)) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L352"
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), new stdgo.AnyInterface(_b1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_pos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
_b1[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
_pos = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b1, (120 : stdgo.GoUInt8));
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L356"
                        if (_pos != ((-1 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L357"
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), new stdgo.AnyInterface(_b1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_pos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                        _j++;
                    };
                };
_b1 = (_b.__slice__((_i / (2 : stdgo.GoInt) : stdgo.GoInt), (_n - (((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L362"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (_b1.length) : Bool)) {
                        _b1[(_j : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
var _pos = @:assignType (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b1, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L365"
                        if (_pos != (_j)) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L366"
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), new stdgo.AnyInterface(_b1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_pos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
_b1[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
_pos = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b1, (120 : stdgo.GoUInt8));
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L370"
                        if (_pos != ((-1 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L371"
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), new stdgo.AnyInterface(_b1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_pos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                        _j++;
                    };
                };
                _i++;
            };
        };
    }

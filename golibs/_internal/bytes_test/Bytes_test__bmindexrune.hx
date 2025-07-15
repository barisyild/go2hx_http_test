package _internal.bytes_test;
function _bmIndexRune(_index:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt32) -> stdgo.GoInt):(stdgo.Ref<stdgo._internal.testing.Testing_b.B>, stdgo.GoInt) -> Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L603"
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _n:stdgo.GoInt):Void {
            var _buf = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L605"
            stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_buf.__slice__((_n - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (19990 : stdgo.GoInt32));
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L606"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                    var _j = @:assignType (_index(_buf, (19990 : stdgo.GoInt32)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L608"
                    if (_j != ((_n - (3 : stdgo.GoInt) : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L609"
                        _b.fatal(new stdgo.AnyInterface(("bad index" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _i++;
                };
            };
            _buf[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _buf[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }

package _internal.bytes_test;
function _bmIndexByte(_index:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt):(stdgo.Ref<stdgo._internal.testing.Testing_b.B>, stdgo.GoInt) -> Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L567"
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _n:stdgo.GoInt):Void {
            var _buf = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L570"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                    var _j = @:assignType (_index(_buf, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L572"
                    if (_j != ((_n - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L573"
                        _b.fatal(new stdgo.AnyInterface(("bad index" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _i++;
                };
            };
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }

package _internal.bytes_test;
function testRepeat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1210"
        if (_internal.bytes_test.Bytes_test_repeattests.repeatTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test_repeattests.repeatTests) {
            var _tin = (_tt._in : stdgo.Slice<stdgo.GoUInt8>);
            var _tout = (_tt._out : stdgo.Slice<stdgo.GoUInt8>);
            var _a = stdgo._internal.bytes.Bytes_repeat.repeat(_tin, _tt._count);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1214"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_a, _tout)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1215"
                _t.errorf(("Repeat(%q, %d) = %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_tin, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_tt._count, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_tout, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1216"
                continue;
            };
        };
    }

package _internal.bytes_test;
function testRunes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1298"
        if (_internal.bytes_test.Bytes_test_runestests.runesTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test_runestests.runesTests) {
            var _tin = (_tt._in : stdgo.Slice<stdgo.GoUInt8>);
            var _a = stdgo._internal.bytes.Bytes_runes.runes(_tin);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1301"
            if (!_internal.bytes_test.Bytes_test__runesequal._runesEqual(_a, _tt._out)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1302"
                _t.errorf(("Runes(%q) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_tin, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }))));
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1303"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1305"
            if (!_tt._lossy) {
                var _s = @:assignType ((_a : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1308"
                if (_s != (_tt._in)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1309"
                    _t.errorf(("string(Runes(%q)) = %x; want %x" : stdgo.GoString), new stdgo.AnyInterface(_tin, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tin, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
            };
        };
    }

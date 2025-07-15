package _internal.bytes_test;
function testContains(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1824"
        if (_internal.bytes_test.Bytes_test__containstests._containsTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test__containstests._containsTests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1825"
            {
                var _got = @:assignType (stdgo._internal.bytes.Bytes_contains.contains(_tt._b, _tt._subslice) : Bool);
                if (_got != (_tt._want)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1826"
                    _t.errorf(("Contains(%q, %q) = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_tt._subslice, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_tt._want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }

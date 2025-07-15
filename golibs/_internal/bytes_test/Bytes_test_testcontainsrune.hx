package _internal.bytes_test;
function testContainsRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1874"
        if (_internal.bytes_test.Bytes_test_containsrunetests.containsRuneTests != null) for (__0 => _ct in _internal.bytes_test.Bytes_test_containsrunetests.containsRuneTests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1875"
            if (stdgo._internal.bytes.Bytes_containsrune.containsRune(_ct._b, _ct._r) != (_ct._expected)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1876"
                _t.errorf(("ContainsRune(%q, %q) = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_ct._b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_ct._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(!_ct._expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_ct._expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
            };
        };
    }

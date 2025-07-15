package _internal.bytes_test;
function testContainsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1883"
        if (_internal.bytes_test.Bytes_test_containsrunetests.containsRuneTests != null) for (__0 => _ct in _internal.bytes_test.Bytes_test_containsrunetests.containsRuneTests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1884"
            if (stdgo._internal.bytes.Bytes_containsfunc.containsFunc(_ct._b, function(_r:stdgo.GoInt32):Bool {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1885"
                return _ct._r == (_r);
            }) != (_ct._expected)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1887"
                _t.errorf(("ContainsFunc(%q, func(%q)) = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_ct._b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_ct._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(!_ct._expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_ct._expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
            };
        };
    }

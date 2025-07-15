package _internal.bytes_test;
function testContainsAny(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1850"
        if (_internal.bytes_test.Bytes_test_containsanytests.containsAnyTests != null) for (__0 => _ct in _internal.bytes_test.Bytes_test_containsanytests.containsAnyTests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1851"
            if (stdgo._internal.bytes.Bytes_containsany.containsAny(_ct._b, _ct._substr?.__copy__()) != (_ct._expected)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1852"
                _t.errorf(("ContainsAny(%s, %s) = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_ct._b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_ct._substr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(!_ct._expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_ct._expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
            };
        };
    }

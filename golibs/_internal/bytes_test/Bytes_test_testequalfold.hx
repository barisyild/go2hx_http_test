package _internal.bytes_test;
function testEqualFold(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1707"
        if (_internal.bytes_test.Bytes_test_equalfoldtests.equalFoldTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test_equalfoldtests.equalFoldTests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1708"
            {
                var _out = @:assignType (stdgo._internal.bytes.Bytes_equalfold.equalFold((_tt._s : stdgo.Slice<stdgo.GoUInt8>), (_tt._t : stdgo.Slice<stdgo.GoUInt8>)) : Bool);
                if (_out != (_tt._out)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1709"
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1711"
            {
                var _out = @:assignType (stdgo._internal.bytes.Bytes_equalfold.equalFold((_tt._t : stdgo.Slice<stdgo.GoUInt8>), (_tt._s : stdgo.Slice<stdgo.GoUInt8>)) : Bool);
                if (_out != (_tt._out)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1712"
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }

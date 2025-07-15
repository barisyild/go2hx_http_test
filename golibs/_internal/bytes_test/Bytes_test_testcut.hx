package _internal.bytes_test;
function testCut(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1733"
        if (_internal.bytes_test.Bytes_test__cuttests._cutTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test__cuttests._cutTests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1734"
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut((_tt._s : stdgo.Slice<stdgo.GoUInt8>), (_tt._sep : stdgo.Slice<stdgo.GoUInt8>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
                if ((((_before : stdgo.GoString) != (_tt._before) || (_after : stdgo.GoString) != (_tt._after) : Bool) || (_found != _tt._found) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1735"
                    _t.errorf(("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._sep, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_before, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_after, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_found, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_tt._before, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._after, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._found, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }

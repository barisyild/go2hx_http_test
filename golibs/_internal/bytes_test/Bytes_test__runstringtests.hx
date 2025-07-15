package _internal.bytes_test;
function _runStringTests(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _f:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>, _funcName:stdgo.GoString, _testCases:stdgo.Slice<_internal.bytes_test.Bytes_test_stringtest.StringTest>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1033"
        if (_testCases != null) for (__0 => _tc in _testCases) {
            var _actual = _f((_tc._in : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1035"
            if (((_actual == null) && (_tc._out != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1036"
                _t.errorf(("%s(%q) = nil; want %q" : stdgo.GoString), new stdgo.AnyInterface(_funcName, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1038"
            if (((_actual != null) && (_tc._out == null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1039"
                _t.errorf(("%s(%q) = %q; want nil" : stdgo.GoString), new stdgo.AnyInterface(_funcName, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_actual, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1041"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _tc._out)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1042"
                _t.errorf(("%s(%q) = %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_funcName, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_actual, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_tc._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            };
        };
    }

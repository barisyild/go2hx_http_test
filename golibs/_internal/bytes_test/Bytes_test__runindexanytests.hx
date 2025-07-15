package _internal.bytes_test;
function _runIndexAnyTests(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _f:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<_internal.bytes_test.Bytes_test_binoptest.BinOpTest>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L273"
        if (_testCases != null) for (__0 => _test in _testCases) {
            var _a = (_test._a : stdgo.Slice<stdgo.GoUInt8>);
            var _actual = @:assignType (_f(_a, _test._b?.__copy__()) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L276"
            if (_actual != (_test._i)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L277"
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_funcName, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_test._b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_actual, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_test._i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }

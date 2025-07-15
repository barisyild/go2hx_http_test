package _internal.bytes_test;
function _runIndexTests(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _f:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<_internal.bytes_test.Bytes_test_binoptest.BinOpTest>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L241"
        if (_testCases != null) for (__0 => _test in _testCases) {
            var _a = (_test._a : stdgo.Slice<stdgo.GoUInt8>);
            var _b = (_test._b : stdgo.Slice<stdgo.GoUInt8>);
            var _actual = @:assignType (_f(_a, _b) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L245"
            if (_actual != (_test._i)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L246"
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_funcName, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_actual, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_test._i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        var _allocTests = (new stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_149.T__struct_149>(2, 2, ...[({ _a : ((("000000000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _b : ((("0000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _i : (5 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_149.T__struct_149), ({ _a : ((("000000000000000000000000000000000000000000000000000000000000000010000" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _b : ((("00000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _i : (3 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_149.T__struct_149)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _a : (null : stdgo.Slice<stdgo.GoUInt8>), _b : (null : stdgo.Slice<stdgo.GoUInt8>), _i : (0 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_149.T__struct_149)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_149.T__struct_149>);
        var _allocs = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L260"
            {
                var _i = @:assignType (stdgo._internal.bytes.Bytes_index.index(_allocTests[(1 : stdgo.GoInt)]._a, _allocTests[(1 : stdgo.GoInt)]._b) : stdgo.GoInt);
                if (_i != (_allocTests[(1 : stdgo.GoInt)]._i)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L261"
                    _t.errorf(("Index([]byte(%q), []byte(%q)) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_allocTests[(1 : stdgo.GoInt)]._a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_allocTests[(1 : stdgo.GoInt)]._b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_allocTests[(1 : stdgo.GoInt)]._i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L263"
            {
                var _i = @:assignType (stdgo._internal.bytes.Bytes_lastindex.lastIndex(_allocTests[(0 : stdgo.GoInt)]._a, _allocTests[(0 : stdgo.GoInt)]._b) : stdgo.GoInt);
                if (_i != (_allocTests[(0 : stdgo.GoInt)]._i)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L264"
                    _t.errorf(("LastIndex([]byte(%q), []byte(%q)) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_allocTests[(0 : stdgo.GoInt)]._a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_allocTests[(0 : stdgo.GoInt)]._b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_allocTests[(0 : stdgo.GoInt)]._i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        }) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L267"
        if (_allocs != ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L268"
            _t.errorf(("expected no allocations, got %f" : stdgo.GoString), new stdgo.AnyInterface(_allocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        };
    }

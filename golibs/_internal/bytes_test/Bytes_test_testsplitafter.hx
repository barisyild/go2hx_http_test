package _internal.bytes_test;
function testSplitAfter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L854"
        if (_internal.bytes_test.Bytes_test__splitaftertests._splitaftertests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test__splitaftertests._splitaftertests) {
            var _a = stdgo._internal.bytes.Bytes_splitaftern.splitAfterN((_tt._s : stdgo.Slice<stdgo.GoUInt8>), (_tt._sep : stdgo.Slice<stdgo.GoUInt8>), _tt._n);
            var _x:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L859"
            if (_a != null) for (__1 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _result = _internal.bytes_test.Bytes_test__sliceofstring._sliceOfString(_a);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L864"
            if (!_internal.bytes_test.Bytes_test__eq._eq(_result, _tt._a)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L865"
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._sep, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_result, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(_tt._a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L866"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L869"
            {
                var _want = @:assignType ((_tt._a[((_tt._a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if ((_x : stdgo.GoString) != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L870"
                    _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
            var _s = stdgo._internal.bytes.Bytes_join.join(_a, (null : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L874"
            if ((_s : stdgo.GoString) != (_tt._s)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L875"
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._sep, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._sep, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L877"
            if ((_tt._n < (0 : stdgo.GoInt) : Bool)) {
                var _b = stdgo._internal.bytes.Bytes_splitafter.splitAfter((_tt._s : stdgo.Slice<stdgo.GoUInt8>), (_tt._sep : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L879"
                if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L880"
                    _t.errorf(("SplitAfter disagrees withSplitAfterN(%q, %q, %d) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._sep, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))));
                };
            };
        };
    }

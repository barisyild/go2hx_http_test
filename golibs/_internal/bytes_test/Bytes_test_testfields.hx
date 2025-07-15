package _internal.bytes_test;
function testFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L906"
        if (_internal.bytes_test.Bytes_test__fieldstests._fieldstests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test__fieldstests._fieldstests) {
            var _b = (_tt._s : stdgo.Slice<stdgo.GoUInt8>);
            var _a = stdgo._internal.bytes.Bytes_fields.fields(_b);
            var _x:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L912"
            if (_a != null) for (__1 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _result = _internal.bytes_test.Bytes_test__sliceofstring._sliceOfString(_a);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L917"
            if (!_internal.bytes_test.Bytes_test__eq._eq(_result, _tt._a)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L918"
                _t.errorf(("Fields(%q) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))), new stdgo.AnyInterface(_tt._a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L919"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L922"
            if ((_b : stdgo.GoString) != (_tt._s)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L923"
                _t.errorf(("slice changed to %s; want %s" : stdgo.GoString), new stdgo.AnyInterface((_b : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L925"
            if (((_tt._a.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L926"
                {
                    var _want = @:assignType ((_tt._a[((_tt._a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if ((_x : stdgo.GoString) != (_want)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L927"
                        _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
            };
        };
    }

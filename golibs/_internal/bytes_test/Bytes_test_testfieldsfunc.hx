package _internal.bytes_test;
function testFieldsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L934"
        if (_internal.bytes_test.Bytes_test__fieldstests._fieldstests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test__fieldstests._fieldstests) {
            var _a = stdgo._internal.bytes.Bytes_fieldsfunc.fieldsFunc((_tt._s : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isspace.isSpace);
            var _result = _internal.bytes_test.Bytes_test__sliceofstring._sliceOfString(_a);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L937"
            if (!_internal.bytes_test.Bytes_test__eq._eq(_result, _tt._a)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L938"
                _t.errorf(("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))), new stdgo.AnyInterface(_tt._a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L939"
                continue;
            };
        };
        var _pred = @:assignType (function(_c:stdgo.GoInt32):Bool {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L942"
            return _c == ((88 : stdgo.GoInt32));
        } : stdgo.GoInt32 -> Bool);
        var _fieldsFuncTests = (new stdgo.Slice<_internal.bytes_test.Bytes_test_fieldstest.FieldsTest>(4, 4, ...[(new _internal.bytes_test.Bytes_test_fieldstest.FieldsTest((stdgo.Go.str() : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.bytes_test.Bytes_test_fieldstest.FieldsTest), (new _internal.bytes_test.Bytes_test_fieldstest.FieldsTest(("XX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.bytes_test.Bytes_test_fieldstest.FieldsTest), (new _internal.bytes_test.Bytes_test_fieldstest.FieldsTest(("XXhiXXX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("hi" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.bytes_test.Bytes_test_fieldstest.FieldsTest), (new _internal.bytes_test.Bytes_test_fieldstest.FieldsTest(("aXXbXXXcX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.bytes_test.Bytes_test_fieldstest.FieldsTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.bytes_test.Bytes_test_fieldstest.FieldsTest)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_fieldstest.FieldsTest>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L949"
        if (_fieldsFuncTests != null) for (__1 => _tt in _fieldsFuncTests) {
            var _b = (_tt._s : stdgo.Slice<stdgo.GoUInt8>);
            var _a = stdgo._internal.bytes.Bytes_fieldsfunc.fieldsFunc(_b, _pred);
            var _x:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L955"
            if (_a != null) for (__2 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _result = _internal.bytes_test.Bytes_test__sliceofstring._sliceOfString(_a);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L960"
            if (!_internal.bytes_test.Bytes_test__eq._eq(_result, _tt._a)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L961"
                _t.errorf(("FieldsFunc(%q) = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))), new stdgo.AnyInterface(_tt._a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L964"
            if ((_b : stdgo.GoString) != (_tt._s)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L965"
                _t.errorf(("slice changed to %s; want %s" : stdgo.GoString), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L967"
            if (((_tt._a.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L968"
                {
                    var _want = @:assignType ((_tt._a[((_tt._a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if ((_x : stdgo.GoString) != (_want)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L969"
                        _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
            };
        };
    }

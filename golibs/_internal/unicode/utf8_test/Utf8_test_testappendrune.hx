package _internal.unicode.utf8_test;
function testAppendRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L132"
        if (_internal.unicode.utf8_test.Utf8_test__utf8map._utf8map != null) for (__0 => _m in _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L133"
            {
                var _buf = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune((null : stdgo.Slice<stdgo.GoUInt8>), _m._r);
                if ((_buf : stdgo.GoString) != (_m._str)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L134"
                    _t.errorf(("AppendRune(nil, %#04x) = %s, want %s" : stdgo.GoString), new stdgo.AnyInterface(_m._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_buf, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_m._str, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L136"
            {
                var _buf = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(((("init" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _m._r);
                if ((_buf : stdgo.GoString) != ((("init" : stdgo.GoString) + _m._str?.__copy__() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L137"
                    _t.errorf(("AppendRune(init, %#04x) = %s, want %s" : stdgo.GoString), new stdgo.AnyInterface(_m._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_buf, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface((("init" : stdgo.GoString) + _m._str?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
    }

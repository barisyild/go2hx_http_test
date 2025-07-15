package _internal.bytes_test;
function testTitle(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1664"
        if (_internal.bytes_test.Bytes_test_titletests.titleTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test_titletests.titleTests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1665"
            {
                var _s = @:assignType ((stdgo._internal.bytes.Bytes_title.title((_tt._in : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1666"
                    _t.errorf(("Title(%q) = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
    }

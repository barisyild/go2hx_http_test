package _internal.bytes_test;
function testToTitle(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1682"
        if (_internal.bytes_test.Bytes_test_totitletests.toTitleTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test_totitletests.toTitleTests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1683"
            {
                var _s = @:assignType ((stdgo._internal.bytes.Bytes_totitle.toTitle((_tt._in : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1684"
                    _t.errorf(("ToTitle(%q) = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
    }

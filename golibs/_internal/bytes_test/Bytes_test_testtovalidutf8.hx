package _internal.bytes_test;
function testToValidUTF8(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1179"
        if (_internal.bytes_test.Bytes_test__tovalidutf8tests._toValidUTF8Tests != null) for (__0 => _tc in _internal.bytes_test.Bytes_test__tovalidutf8tests._toValidUTF8Tests) {
            var _got = stdgo._internal.bytes.Bytes_tovalidutf8.toValidUTF8((_tc._in : stdgo.Slice<stdgo.GoUInt8>), (_tc._repl : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1181"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_got, (_tc._out : stdgo.Slice<stdgo.GoUInt8>))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1182"
                _t.errorf(("ToValidUTF8(%q, %q) = %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_tc._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tc._repl, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_tc._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }

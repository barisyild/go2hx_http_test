package _internal.unicode.utf8_test;
function testValid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L494"
        if (_internal.unicode.utf8_test.Utf8_test__validtests._validTests != null) for (__0 => _tt in _internal.unicode.utf8_test.Utf8_test__validtests._validTests) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L495"
            if (stdgo._internal.unicode.utf8.Utf8_valid.valid((_tt._in : stdgo.Slice<stdgo.GoUInt8>)) != (_tt._out)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L496"
                _t.errorf(("Valid(%q) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(!_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L498"
            if (stdgo._internal.unicode.utf8.Utf8_validstring.validString(_tt._in?.__copy__()) != (_tt._out)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L499"
                _t.errorf(("ValidString(%q) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(!_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
            };
        };
    }

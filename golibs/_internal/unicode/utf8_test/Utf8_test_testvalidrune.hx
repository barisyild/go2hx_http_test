package _internal.unicode.utf8_test;
function testValidRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L525"
        if (_internal.unicode.utf8_test.Utf8_test__validrunetests._validrunetests != null) for (__0 => _tt in _internal.unicode.utf8_test.Utf8_test__validrunetests._validrunetests) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L526"
            {
                var _ok = @:assignType (stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_tt._r) : Bool);
                if (_ok != (_tt._ok)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L527"
                    _t.errorf(("ValidRune(%#U) = %t, want %t" : stdgo.GoString), new stdgo.AnyInterface(_tt._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_tt._ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }

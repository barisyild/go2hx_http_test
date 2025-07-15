package _internal.unicode.utf8_test;
function testRuneCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L431"
        if (_internal.unicode.utf8_test.Utf8_test__runecounttests._runecounttests != null) for (__0 => _tt in _internal.unicode.utf8_test.Utf8_test__runecounttests._runecounttests) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L432"
            {
                var _out = @:assignType (stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_tt._in?.__copy__()) : stdgo.GoInt);
                if (_out != (_tt._out)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L433"
                    _t.errorf(("RuneCountInString(%q) = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L435"
            {
                var _out = @:assignType (stdgo._internal.unicode.utf8.Utf8_runecount.runeCount((_tt._in : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                if (_out != (_tt._out)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L436"
                    _t.errorf(("RuneCount(%q) = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        };
    }

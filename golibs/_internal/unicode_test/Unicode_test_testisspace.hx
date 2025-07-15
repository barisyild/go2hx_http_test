package _internal.unicode_test;
function testIsSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L332"
        if (_internal.unicode_test.Unicode_test__spacetest._spaceTest != null) for (__0 => _c in _internal.unicode_test.Unicode_test__spacetest._spaceTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L333"
            if (!stdgo._internal.unicode.Unicode_isspace.isSpace(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L334"
                _t.errorf(("IsSpace(U+%04X) = false; want true" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L337"
        if (_internal.unicode_test.Unicode_test__lettertest._letterTest != null) for (__1 => _c in _internal.unicode_test.Unicode_test__lettertest._letterTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L338"
            if (stdgo._internal.unicode.Unicode_isspace.isSpace(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L339"
                _t.errorf(("IsSpace(U+%04X) = true; want false" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        };
    }

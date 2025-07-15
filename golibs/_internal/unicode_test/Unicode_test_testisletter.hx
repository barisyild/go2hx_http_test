package _internal.unicode_test;
function testIsLetter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L239"
        if (_internal.unicode_test.Unicode_test__uppertest._upperTest != null) for (__0 => _r in _internal.unicode_test.Unicode_test__uppertest._upperTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L240"
            if (!stdgo._internal.unicode.Unicode_isletter.isLetter(_r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L241"
                _t.errorf(("IsLetter(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L244"
        if (_internal.unicode_test.Unicode_test__lettertest._letterTest != null) for (__1 => _r in _internal.unicode_test.Unicode_test__lettertest._letterTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L245"
            if (!stdgo._internal.unicode.Unicode_isletter.isLetter(_r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L246"
                _t.errorf(("IsLetter(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L249"
        if (_internal.unicode_test.Unicode_test__notlettertest._notletterTest != null) for (__2 => _r in _internal.unicode_test.Unicode_test__notlettertest._notletterTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L250"
            if (stdgo._internal.unicode.Unicode_isletter.isLetter(_r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L251"
                _t.errorf(("IsLetter(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }

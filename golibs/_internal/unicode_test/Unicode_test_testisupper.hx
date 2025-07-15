package _internal.unicode_test;
function testIsUpper(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L257"
        if (_internal.unicode_test.Unicode_test__uppertest._upperTest != null) for (__0 => _r in _internal.unicode_test.Unicode_test__uppertest._upperTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L258"
            if (!stdgo._internal.unicode.Unicode_isupper.isUpper(_r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L259"
                _t.errorf(("IsUpper(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L262"
        if (_internal.unicode_test.Unicode_test__notuppertest._notupperTest != null) for (__1 => _r in _internal.unicode_test.Unicode_test__notuppertest._notupperTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L263"
            if (stdgo._internal.unicode.Unicode_isupper.isUpper(_r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L264"
                _t.errorf(("IsUpper(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L267"
        if (_internal.unicode_test.Unicode_test__notlettertest._notletterTest != null) for (__2 => _r in _internal.unicode_test.Unicode_test__notlettertest._notletterTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L268"
            if (stdgo._internal.unicode.Unicode_isupper.isUpper(_r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L269"
                _t.errorf(("IsUpper(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }

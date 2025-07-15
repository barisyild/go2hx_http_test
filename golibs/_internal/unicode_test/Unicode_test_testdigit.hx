package _internal.unicode_test;
function testDigit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/digit_test.go#L107"
        if (_internal.unicode_test.Unicode_test__testdigit._testDigit != null) for (__0 => _r in _internal.unicode_test.Unicode_test__testdigit._testDigit) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/digit_test.go#L108"
            if (!stdgo._internal.unicode.Unicode_isdigit.isDigit(_r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/digit_test.go#L109"
                _t.errorf(("IsDigit(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/digit_test.go#L112"
        if (_internal.unicode_test.Unicode_test__testletter._testLetter != null) for (__1 => _r in _internal.unicode_test.Unicode_test__testletter._testLetter) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/digit_test.go#L113"
            if (stdgo._internal.unicode.Unicode_isdigit.isDigit(_r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/digit_test.go#L114"
                _t.errorf(("IsDigit(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }

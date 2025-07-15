package _internal.unicode_test;
function testDigitOptimization(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/digit_test.go#L121"
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (255 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/digit_test.go#L122"
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_digit.digit, _i) != (stdgo._internal.unicode.Unicode_isdigit.isDigit(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/digit_test.go#L123"
                    _t.errorf(("IsDigit(U+%04X) disagrees with Is(Digit)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                _i++;
            };
        };
    }

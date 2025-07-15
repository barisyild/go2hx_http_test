package _internal.unicode_test;
function testTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L287"
        if (_internal.unicode_test.Unicode_test__casetest._caseTest != null) for (__0 => _c in _internal.unicode_test.Unicode_test__casetest._caseTest) {
            var _r = (stdgo._internal.unicode.Unicode_to.to(_c._cas, _c._in) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L289"
            if (_c._out != (_r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L290"
                _t.errorf(("To(U+%04X, %s) = U+%04X want U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_c._in), stdgo.Go.toInterface(_internal.unicode_test.Unicode_test__casestring._caseString(_c._cas)), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_c._out));
            };
        };
    }

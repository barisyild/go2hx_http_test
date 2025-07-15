package _internal.unicode_test;
function testToTitleCase(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L320"
        if (_internal.unicode_test.Unicode_test__casetest._caseTest != null) for (__0 => _c in _internal.unicode_test.Unicode_test__casetest._caseTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L321"
            if (_c._cas != ((2 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L322"
                continue;
            };
            var _r = (stdgo._internal.unicode.Unicode_totitle.toTitle(_c._in) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L325"
            if (_c._out != (_r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L326"
                _t.errorf(("ToTitle(U+%04X) = U+%04X want U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_c._in), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_c._out));
            };
        };
    }

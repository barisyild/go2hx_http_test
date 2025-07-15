package _internal.unicode_test;
function testLetterOptimizations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L347"
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (255 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L348"
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_letter.letter, _i) != (stdgo._internal.unicode.Unicode_isletter.isLetter(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L349"
                    _t.errorf(("IsLetter(U+%04X) disagrees with Is(Letter)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L351"
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_upper.upper, _i) != (stdgo._internal.unicode.Unicode_isupper.isUpper(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L352"
                    _t.errorf(("IsUpper(U+%04X) disagrees with Is(Upper)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L354"
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_lower.lower, _i) != (stdgo._internal.unicode.Unicode_islower.isLower(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L355"
                    _t.errorf(("IsLower(U+%04X) disagrees with Is(Lower)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L357"
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_title.title, _i) != (stdgo._internal.unicode.Unicode_istitle.isTitle(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L358"
                    _t.errorf(("IsTitle(U+%04X) disagrees with Is(Title)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L360"
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_white_space.white_Space, _i) != (stdgo._internal.unicode.Unicode_isspace.isSpace(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L361"
                    _t.errorf(("IsSpace(U+%04X) disagrees with Is(White_Space)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L363"
                if (stdgo._internal.unicode.Unicode_to.to((0 : stdgo.GoInt), _i) != (stdgo._internal.unicode.Unicode_toupper.toUpper(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L364"
                    _t.errorf(("ToUpper(U+%04X) disagrees with To(Upper)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L366"
                if (stdgo._internal.unicode.Unicode_to.to((1 : stdgo.GoInt), _i) != (stdgo._internal.unicode.Unicode_tolower.toLower(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L367"
                    _t.errorf(("ToLower(U+%04X) disagrees with To(Lower)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L369"
                if (stdgo._internal.unicode.Unicode_to.to((2 : stdgo.GoInt), _i) != (stdgo._internal.unicode.Unicode_totitle.toTitle(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L370"
                    _t.errorf(("ToTitle(U+%04X) disagrees with To(Title)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                _i++;
            };
        };
    }

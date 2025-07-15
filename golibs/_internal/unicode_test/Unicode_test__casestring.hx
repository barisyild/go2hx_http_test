package _internal.unicode_test;
function _caseString(_c:stdgo.GoInt):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L275"
        {
            final __value__ = _c;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L277"
                return ("UpperCase" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L279"
                return ("LowerCase" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L281"
                return ("TitleCase" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L283"
        return ("ErrorCase" : stdgo.GoString);
    }

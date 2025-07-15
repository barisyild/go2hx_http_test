package _internal.unicode.utf8_test;
function _runtimeDecodeRune(_s:stdgo.GoString):stdgo.GoInt32 {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L315"
        if (_s != null) for (__0 => _r in _s) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L316"
            return _r;
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L318"
        return (-1 : stdgo.GoInt32);
    }

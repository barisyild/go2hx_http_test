package _internal.fmt_test;
function _hideFromVet(_s:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1798"
        return _s?.__copy__();
    }

package _internal.fmt_test;
function _zeroFill(_prefix:stdgo.GoString, _width:stdgo.GoInt, _suffix:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1090"
        return ((_prefix + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (_width - (_suffix.length) : stdgo.GoInt))?.__copy__() : stdgo.GoString) + _suffix?.__copy__() : stdgo.GoString)?.__copy__();
    }

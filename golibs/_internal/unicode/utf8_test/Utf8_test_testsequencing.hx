package _internal.unicode.utf8_test;
function testSequencing(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L218"
        if (_internal.unicode.utf8_test.Utf8_test__teststrings._testStrings != null) for (__0 => _ts in _internal.unicode.utf8_test.Utf8_test__teststrings._testStrings) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L219"
            if (_internal.unicode.utf8_test.Utf8_test__utf8map._utf8map != null) for (__1 => _m in _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L220"
                if ((new stdgo.Slice<stdgo.GoString>(3, 3, ...[(_ts + _m._str?.__copy__() : stdgo.GoString)?.__copy__(), (_m._str + _ts?.__copy__() : stdgo.GoString)?.__copy__(), ((_ts + _m._str?.__copy__() : stdgo.GoString) + _ts?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) != null) for (__2 => _s in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[(_ts + _m._str?.__copy__() : stdgo.GoString)?.__copy__(), (_m._str + _ts?.__copy__() : stdgo.GoString)?.__copy__(), ((_ts + _m._str?.__copy__() : stdgo.GoString) + _ts?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L221"
                    _internal.unicode.utf8_test.Utf8_test__testsequence._testSequence(_t, _s?.__copy__());
                };
            };
        };
    }

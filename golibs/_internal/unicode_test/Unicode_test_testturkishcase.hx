package _internal.unicode_test;
function testTurkishCase(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _lower = ((("abcçdefgğhıijklmnoöprsştuüvyz" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
        var _upper = ((("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L378"
        if (_lower != null) for (_i => _l in _lower) {
            var _u = (_upper[(_i : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L380"
            if (stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toLower(_l) != (_l)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L381"
                _t.errorf(("lower(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toLower(_l)), stdgo.Go.toInterface(_l));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L383"
            if (stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toUpper(_u) != (_u)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L384"
                _t.errorf(("upper(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toUpper(_u)), stdgo.Go.toInterface(_u));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L386"
            if (stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toUpper(_l) != (_u)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L387"
                _t.errorf(("upper(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toUpper(_l)), stdgo.Go.toInterface(_u));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L389"
            if (stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toLower(_u) != (_l)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L390"
                _t.errorf(("lower(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toLower(_l)), stdgo.Go.toInterface(_l));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L392"
            if (stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toTitle(_u) != (_u)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L393"
                _t.errorf(("title(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toTitle(_u)), stdgo.Go.toInterface(_u));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L395"
            if (stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toTitle(_l) != (_u)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L396"
                _t.errorf(("title(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishcase.turkishCase.toTitle(_l)), stdgo.Go.toInterface(_u));
            };
        };
    }

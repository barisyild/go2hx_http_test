package stdgo._internal.unicode;
function isTitle(_r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L203"
        if ((_r <= (255 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L204"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L206"
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_title.title, _r);
    }

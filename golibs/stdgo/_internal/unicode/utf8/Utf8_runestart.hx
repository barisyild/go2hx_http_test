package stdgo._internal.unicode.utf8;
function runeStart(_b:stdgo.GoUInt8):Bool {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L474"
        return (_b & (192 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((128 : stdgo.GoUInt8));
    }

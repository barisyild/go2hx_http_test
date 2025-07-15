package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function indexRune(_s:stdgo.GoString, _r:stdgo.GoInt32):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L126"
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (128 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L128"
            return stdgo._internal.strings.Strings_indexbyte.indexByte(_s?.__copy__(), (_r : stdgo.GoUInt8));
        } else if (_r == ((65533 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L130"
            if (_s != null) for (_i => _r in _s) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L131"
                if (_r == ((65533 : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L132"
                    return _i;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L135"
            return (-1 : stdgo.GoInt);
        } else if (!stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_r)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L137"
            return (-1 : stdgo.GoInt);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L139"
            return stdgo._internal.strings.Strings_index.index(_s?.__copy__(), (_r : stdgo.GoString)?.__copy__());
        };
    }

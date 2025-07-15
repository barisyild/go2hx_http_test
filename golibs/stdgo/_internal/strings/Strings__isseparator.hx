package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _isSeparator(_r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L756"
        if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L757"
            if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L759"
                return false;
            } else if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L761"
                return false;
            } else if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L763"
                return false;
            } else if (_r == ((95 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L765"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L767"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L770"
        if ((stdgo._internal.unicode.Unicode_isletter.isLetter(_r) || stdgo._internal.unicode.Unicode_isdigit.isDigit(_r) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L771"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L774"
        return stdgo._internal.unicode.Unicode_isspace.isSpace(_r);
    }

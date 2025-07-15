package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function isIdentifier(_name:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/token/token.go#L332"
        if (((_name == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.go.token.Token_iskeyword.isKeyword(_name?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/token/token.go#L333"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/token.go#L335"
        if (_name != null) for (_i => _c in _name) {
            //"file:///Users/o/.go/go1.21.3/src/go/token/token.go#L336"
            if (((!stdgo._internal.unicode.Unicode_isletter.isLetter(_c) && _c != ((95 : stdgo.GoInt32)) : Bool) && (((_i == (0 : stdgo.GoInt)) || !stdgo._internal.unicode.Unicode_isdigit.isDigit(_c) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/token/token.go#L337"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/token.go#L340"
        return true;
    }

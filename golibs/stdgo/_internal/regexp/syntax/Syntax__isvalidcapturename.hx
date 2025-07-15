package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _isValidCaptureName(_name:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1257"
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1258"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1260"
        if (_name != null) for (__1 => _c in _name) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1261"
            if (((_c != (95 : stdgo.GoInt32)) && !stdgo._internal.regexp.syntax.Syntax__isalnum._isalnum(_c) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1262"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1265"
        return true;
    }

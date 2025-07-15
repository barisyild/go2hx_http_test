package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _shouldBacktrack(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L74"
        return (((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.length) <= (500 : stdgo.GoInt) : Bool);
    }

package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L65"
        if (!stdgo._internal.regexp.Regexp__shouldbacktrack._shouldBacktrack(_prog)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L66"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/backtrack.go#L68"
        return ((262144 : stdgo.GoInt) / ((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.length) : stdgo.GoInt);
    }

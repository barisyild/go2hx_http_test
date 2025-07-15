package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _isCharClass(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1299"
        return (((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) == ((1 : stdgo.GoInt)) : Bool) || (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool) || (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((5 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool) || ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == (6 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool);
    }

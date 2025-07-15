package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _appendLiteral(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.GoInt32, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):stdgo.Slice<stdgo.GoInt32> {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1859"
        if ((_flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1860"
            return stdgo._internal.regexp.syntax.Syntax__appendfoldedrange._appendFoldedRange(_r, _x, _x);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1862"
        return stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _x, _x);
    }

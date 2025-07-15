package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _makePatchList(_n:stdgo.GoUInt32):stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L24"
        return (new stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList(_n, _n) : stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList);
    }

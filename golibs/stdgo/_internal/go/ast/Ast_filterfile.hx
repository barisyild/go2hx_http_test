package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function filterFile(_src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _f:stdgo._internal.go.ast.Ast_filter.Filter):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L254"
        return stdgo._internal.go.ast.Ast__filterfile._filterFile(_src, _f, false);
    }

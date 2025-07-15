package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function filterPackage(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _f:stdgo._internal.go.ast.Ast_filter.Filter):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L280"
        return stdgo._internal.go.ast.Ast__filterpackage._filterPackage(_pkg, _f, false);
    }

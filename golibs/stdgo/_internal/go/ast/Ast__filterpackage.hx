package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _filterPackage(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        var _hasDecls = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L285"
        if ((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files != null) for (__0 => _src in (@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L286"
            if (stdgo._internal.go.ast.Ast__filterfile._filterFile(_src, _f, _export)) {
                _hasDecls = true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L290"
        return _hasDecls;
    }

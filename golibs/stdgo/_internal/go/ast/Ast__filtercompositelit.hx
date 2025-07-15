package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _filterCompositeLit(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>, _filter:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Void {
        var _n = @:assignType ((@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elts.length : stdgo.GoInt);
        (@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elts = stdgo._internal.go.ast.Ast__filterexprlist._filterExprList((@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elts, _filter, _export);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L112"
        if ((((@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elts.length) < _n : Bool)) {
            (@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).incomplete = true;
        };
    }

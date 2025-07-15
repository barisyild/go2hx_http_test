package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _filterFile(_src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        var _j = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L259"
        if ((@:checkr _src ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls != null) for (__0 => _d in (@:checkr _src ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L260"
            if (stdgo._internal.go.ast.Ast__filterdecl._filterDecl(_d, _f, _export)) {
                (@:checkr _src ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls[(_j : stdgo.GoInt)] = _d;
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L262"
                _j++;
            };
        };
        (@:checkr _src ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls = ((@:checkr _src ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L266"
        return (_j > (0 : stdgo.GoInt) : Bool);
    }

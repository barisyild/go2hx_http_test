package stdgo._internal.go.internal.typeparams;
function packIndexExpr(_x:stdgo._internal.go.ast.Ast_expr.Expr, _lbrack:stdgo._internal.go.token.Token_pos.Pos, _exprs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _rbrack:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.ast.Ast_expr.Expr {
        //"file:///Users/o/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L13"
        {
            final __value__ = (_exprs.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L15"
                throw new stdgo.AnyInterface(("internal error: PackIndexExpr with empty expr slice" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L17"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, index : _exprs[(0 : stdgo.GoInt)], rbrack : _rbrack } : stdgo._internal.go.ast.Ast_indexexpr.IndexExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr }));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L24"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, indices : _exprs, rbrack : _rbrack } : stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexlistexprdotindexlistexpr.__type__stdgodot_internaldotgodotastdotAst_indexlistexprdotIndexListExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexlistexprdotindexlistexpr.__type__stdgodot_internaldotgodotastdotAst_indexlistexprdotIndexListExpr }));
            };
        };
    }

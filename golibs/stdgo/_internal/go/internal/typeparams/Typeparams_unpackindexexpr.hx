package stdgo._internal.go.internal.typeparams;
function unpackIndexExpr(_n:stdgo._internal.go.ast.Ast_node.Node):stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr> {
        //"file:///Users/o/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L42"
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr }))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L44"
                return (stdgo.Go.setRef((new stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr(stdgo.Go.asInterface(_e, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr })), (stdgo.Go.setRef(({ x : (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, lbrack : (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lbrack, indices : (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[(@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).index]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), rbrack : (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rbrack } : stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexlistexprdotindexlistexpr.__type__stdgodot_internaldotgodotastdotAst_indexlistexprdotIndexListExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>)) : stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotinternaldottypeparamsdottypeparams_indexexprdotindexexpr.__type__stdgodot_internaldotgodotinternaldottypeparamsdotTypeparams_indexexprdotIndexExpr })) : stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexlistexprdotindexlistexpr.__type__stdgodot_internaldotgodotastdotAst_indexlistexprdotIndexListExpr }))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L51"
                return (stdgo.Go.setRef((new stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr(stdgo.Go.asInterface(_e, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexlistexprdotindexlistexpr.__type__stdgodot_internaldotgodotastdotAst_indexlistexprdotIndexListExpr })), _e) : stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotinternaldottypeparamsdottypeparams_indexexprdotindexexpr.__type__stdgodot_internaldotgodotinternaldottypeparamsdotTypeparams_indexexprdotIndexExpr })) : stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L53"
        return null;
    }

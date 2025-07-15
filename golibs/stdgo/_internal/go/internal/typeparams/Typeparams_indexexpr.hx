package stdgo._internal.go.internal.typeparams;
@:structInit @:using(stdgo._internal.go.internal.typeparams.Typeparams_indexexpr_static_extension.IndexExpr_static_extension) @:using(stdgo._internal.go.internal.typeparams.Typeparams_indexexpr_static_extension.IndexExpr_static_extension) class IndexExpr {
    public var orig : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    @:embedded
    public var indexListExpr : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>);
    public function new(?orig:stdgo._internal.go.ast.Ast_expr.Expr, ?indexListExpr:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) {
        if (orig != null) this.orig = orig;
        if (indexListExpr != null) this.indexListExpr = indexListExpr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "orig", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr }, optional : false }, { name : "indexListExpr", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexlistexprdotindexlistexpr.__type__stdgodot_internaldotgodotastdotAst_indexlistexprdotIndexListExpr }) }, optional : false }])));
    public var end(get, never) : () -> stdgo._internal.go.token.Token_pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_end():() -> stdgo._internal.go.token.Token_pos.Pos return @:check32 this.indexListExpr.end;
    public var pos(get, never) : () -> stdgo._internal.go.token.Token_pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_pos():() -> stdgo._internal.go.token.Token_pos.Pos return @:check32 this.indexListExpr.pos;
    public var _exprNode(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__exprNode():() -> Void return @:check32 this.indexListExpr._exprNode;
    public function __copy__() {
        return new IndexExpr(orig, indexListExpr);
    }
}

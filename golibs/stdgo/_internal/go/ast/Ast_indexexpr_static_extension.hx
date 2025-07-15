package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.IndexExpr_asInterface) class IndexExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L527"
        return ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rbrack + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L493"
        return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.pos();
    }
}

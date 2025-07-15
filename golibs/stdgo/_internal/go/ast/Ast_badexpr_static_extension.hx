package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.BadExpr_asInterface) class BadExpr_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L514"
        return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).to;
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L480"
        return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).from;
    }
}

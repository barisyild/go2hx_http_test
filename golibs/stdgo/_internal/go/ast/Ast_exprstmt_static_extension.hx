package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.ExprStmt_asInterface) class ExprStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L796"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L769"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.pos();
    }
}

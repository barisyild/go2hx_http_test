package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.SwitchStmt_asInterface) class SwitchStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L837"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L780"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).switch_;
    }
}

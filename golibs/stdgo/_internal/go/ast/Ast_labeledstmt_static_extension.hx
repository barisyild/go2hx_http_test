package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.LabeledStmt_asInterface) class LabeledStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L795"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stmt.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L768"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label.pos();
    }
}

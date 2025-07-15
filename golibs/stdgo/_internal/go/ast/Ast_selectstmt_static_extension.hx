package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.SelectStmt_asInterface) class SelectStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L845"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L783"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).select;
    }
}

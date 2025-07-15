package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.IncDecStmt_asInterface) class IncDecStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L799"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tokPos + (2 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L771"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.pos();
    }
}

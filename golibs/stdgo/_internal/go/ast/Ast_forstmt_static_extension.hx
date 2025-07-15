package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.ForStmt_asInterface) class ForStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L846"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L784"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).for_;
    }
}

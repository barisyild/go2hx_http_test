package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.EmptyStmt_asInterface) class EmptyStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L790"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).implicit) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L791"
            return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).semicolon;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L793"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).semicolon + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L767"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).semicolon;
    }
}

package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.ReturnStmt_asInterface) class ReturnStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L805"
        {
            var _n = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L806"
                return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L808"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).return_ + (6 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L775"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).return_;
    }
}

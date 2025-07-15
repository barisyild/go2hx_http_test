package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.BlockStmt_asInterface) class BlockStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L817"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rbrace.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L818"
            return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rbrace + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L820"
        {
            var _n = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L821"
                return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L823"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lbrace + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L777"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lbrace;
    }
}

package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.BranchStmt_asInterface) class BranchStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L811"
        if (({
            final value = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L812"
            return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label.end();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L814"
        return ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tokPos : stdgo.GoInt) + (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tok.string() : stdgo.GoString).length) : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L776"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tokPos;
    }
}

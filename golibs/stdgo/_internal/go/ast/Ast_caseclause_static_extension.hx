package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.CaseClause_asInterface) class CaseClause_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L832"
        {
            var _n = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L833"
                return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L835"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).colon + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L779"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).case_;
    }
}

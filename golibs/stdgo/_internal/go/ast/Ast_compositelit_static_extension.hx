package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.CompositeLit_asInterface) class CompositeLit_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L524"
        return ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rbrace + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L486"
        if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L487"
            return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.pos();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L489"
        return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lbrace;
    }
}

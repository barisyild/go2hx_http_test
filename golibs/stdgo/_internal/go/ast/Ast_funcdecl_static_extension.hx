package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.FuncDecl_asInterface) class FuncDecl_static_extension {
    @:keep
    @:tdfield
    static public function _declNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = _;
    }
    @:keep
    @:tdfield
    static public function end( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = _d;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1005"
        if (({
            final value = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1006"
            return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.end();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1008"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.end();
    }
    @:keep
    @:tdfield
    static public function pos( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = _d;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L995"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.pos();
    }
}

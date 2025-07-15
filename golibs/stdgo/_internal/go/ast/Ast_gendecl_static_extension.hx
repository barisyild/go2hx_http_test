package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.GenDecl_asInterface) class GenDecl_static_extension {
    @:keep
    @:tdfield
    static public function _declNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = _;
    }
    @:keep
    @:tdfield
    static public function end( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = _d;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L999"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rparen.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1000"
            return ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rparen + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1002"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs[(0 : stdgo.GoInt)].end();
    }
    @:keep
    @:tdfield
    static public function pos( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = _d;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L994"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tokPos;
    }
}

package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.BadDecl_asInterface) class BadDecl_static_extension {
    @:keep
    @:tdfield
    static public function _declNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = _;
    }
    @:keep
    @:tdfield
    static public function end( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = _d;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L997"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).to;
    }
    @:keep
    @:tdfield
    static public function pos( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = _d;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L993"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).from;
    }
}

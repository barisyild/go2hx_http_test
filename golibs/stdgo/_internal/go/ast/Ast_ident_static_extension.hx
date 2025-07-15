package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.Ident_asInterface) class Ident_static_extension {
    @:keep
    @:tdfield
    static public function string( _id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo.GoString {
        @:recv var _id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = _id;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L589"
        if (({
            final value = _id;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L590"
            return (@:checkr _id ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L592"
        return ("<nil>" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function isExported( _id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):Bool {
        @:recv var _id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = _id;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L586"
        return stdgo._internal.go.token.Token_isexported.isExported((@:checkr _id ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L515"
        return ((((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).namePos : stdgo.GoInt) + ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.length) : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L481"
        return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).namePos;
    }
}

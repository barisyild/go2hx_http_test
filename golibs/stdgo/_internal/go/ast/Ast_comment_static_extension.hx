package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.Comment_asInterface) class Comment_static_extension {
    @:keep
    @:tdfield
    static public function end( _c:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = _c;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L70"
        return ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).slash : stdgo.GoInt) + ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).text.length) : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _c:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = _c;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L69"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).slash;
    }
}

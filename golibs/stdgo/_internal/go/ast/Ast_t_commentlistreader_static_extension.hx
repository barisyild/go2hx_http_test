package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_commentListReader_asInterface) class T_commentListReader_static_extension {
    @:keep
    @:tdfield
    static public function _next( _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L89"
        if (!_r._eol()) {
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._comment = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._list[((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index : stdgo.GoInt)];
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fset.position((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._comment.pos())?.__copy__();
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._end = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fset.position((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._comment.end())?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L93"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        };
    }
    @:keep
    @:tdfield
    static public function _eol( _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L85"
        return ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index >= ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._list.length) : Bool);
    }
}

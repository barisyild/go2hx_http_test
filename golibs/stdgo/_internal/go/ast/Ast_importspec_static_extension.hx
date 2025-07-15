package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.ImportSpec_asInterface) class ImportSpec_static_extension {
    @:keep
    @:tdfield
    static public function _specNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L928"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).endPos != ((0 : stdgo._internal.go.token.Token_pos.Pos))) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L929"
            return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).endPos;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L931"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L919"
        if (({
            final value = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L920"
            return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.pos();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L922"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path.pos();
    }
}

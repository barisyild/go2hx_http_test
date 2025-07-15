package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function end( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1059"
        {
            var _n = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1060"
                return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1062"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.end();
    }
    @:keep
    @:tdfield
    static public function pos( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1054"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).package_;
    }
}

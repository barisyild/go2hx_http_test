package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.ObjKind_asInterface) class ObjKind_static_extension {
    @:keep
    @:tdfield
    static public function string( _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind):stdgo.GoString {
        @:recv var _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind = _kind;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L156"
        return stdgo._internal.go.ast.Ast__objkindstrings._objKindStrings[(_kind : stdgo.GoInt)]?.__copy__();
    }
}

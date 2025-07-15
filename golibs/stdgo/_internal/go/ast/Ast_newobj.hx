package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function newObj(_kind:stdgo._internal.go.ast.Ast_objkind.ObjKind, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L82"
        return (stdgo.Go.setRef(({ kind : _kind, name : _name?.__copy__() } : stdgo._internal.go.ast.Ast_object.Object), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_objectdotobject.__type__stdgodot_internaldotgodotastdotAst_objectdotObject })) : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
    }

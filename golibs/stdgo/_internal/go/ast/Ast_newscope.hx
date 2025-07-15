package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function newScope(_outer:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>):stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> {
        {};
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L26"
        return (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_scope.Scope(_outer, (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>)) : stdgo._internal.go.ast.Ast_scope.Scope), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_scopedotscope.__type__stdgodot_internaldotgodotastdotAst_scopedotScope })) : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    }

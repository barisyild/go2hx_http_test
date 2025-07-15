package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _resolve(_scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L45"
        while (({
            final value = _scope;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L46"
            {
                var _obj = _scope.lookup((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.__copy__());
                if (({
                    final value = _obj;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj = _obj;
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L48"
                    return true;
                };
            };
            _scope = (@:checkr _scope ?? throw stdgo.Error._nullPointerDereference.__underlying__()).outer;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L51"
        return false;
    }

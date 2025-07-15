package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _filterIdentList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, _f:stdgo._internal.go.ast.Ast_filter.Filter):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> {
        var _j = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L48"
        if (_list != null) for (__0 => _x in _list) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L49"
            if (_f((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__())) {
                _list[(_j : stdgo.GoInt)] = _x;
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L51"
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L54"
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
    }

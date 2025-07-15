package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _filterSpecList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> {
        var _j = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L214"
        if (_list != null) for (__0 => _s in _list) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L215"
            if (stdgo._internal.go.ast.Ast__filterspec._filterSpec(_s, _f, _export)) {
                _list[(_j : stdgo.GoInt)] = _s;
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L217"
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L220"
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
    }

package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _filterParamList(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _filter:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L138"
        if (({
            final value = _fields;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L139"
            return false;
        };
        var _b:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L142"
        if ((@:checkr _fields ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list != null) for (__0 => _f in (@:checkr _fields ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L143"
            if (stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type, _filter, _export)) {
                _b = true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L147"
        return _b;
    }

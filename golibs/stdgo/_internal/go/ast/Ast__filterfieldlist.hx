package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _filterFieldList(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _filter:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        var _removedFields = false;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L75"
        if (({
            final value = _fields;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L76"
            return _removedFields = false;
        };
        var _list = (@:checkr _fields ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list;
        var _j = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L80"
        if (_list != null) for (__0 => _f in _list) {
            var _keepField = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L82"
            if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names.length) == ((0 : stdgo.GoInt))) {
                var _name = stdgo._internal.go.ast.Ast__fieldname._fieldName((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                _keepField = (({
                    final value = _name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && _filter((@:checkr _name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__()) : Bool);
            } else {
                var _n = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names.length : stdgo.GoInt);
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names = stdgo._internal.go.ast.Ast__filteridentlist._filterIdentList((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names, _filter);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L89"
                if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names.length) < _n : Bool)) {
                    _removedFields = true;
                };
                _keepField = (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names.length) > (0 : stdgo.GoInt) : Bool);
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L94"
            if (_keepField) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L95"
                if (_export) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L96"
                    stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type, _filter, _export);
                };
                _list[(_j : stdgo.GoInt)] = _f;
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L99"
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L102"
        if ((_j < (_list.length) : Bool)) {
            _removedFields = true;
        };
        (@:checkr _fields ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list = (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L106"
        return _removedFields;
    }

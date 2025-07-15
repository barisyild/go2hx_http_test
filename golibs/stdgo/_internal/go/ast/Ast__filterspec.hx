package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _filterSpec(_spec:stdgo._internal.go.ast.Ast_spec.Spec, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L183"
        {
            final __type__ = _spec;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_specdotspec.__type__stdgodot_internaldotgodotastdotAst_specdotSpec)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_valuespecdotvaluespec.__type__stdgodot_internaldotgodotastdotAst_valuespecdotValueSpec }))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names = stdgo._internal.go.ast.Ast__filteridentlist._filterIdentList((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names, _f);
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).values = stdgo._internal.go.ast.Ast__filterexprlist._filterExprList((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).values, _f, _export);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L187"
                if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L188"
                    if (_export) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L189"
                        stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type, _f, _export);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L191"
                    return true;
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_specdotspec.__type__stdgodot_internaldotgodotastdotAst_specdotSpec)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typespecdottypespec.__type__stdgodot_internaldotgodotastdotAst_typespecdotTypeSpec }))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L194"
                if (_f((@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L195"
                    if (_export) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L196"
                        stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type, _f, _export);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L198"
                    return true;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L200"
                if (!_export) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L206"
                    return stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type, _f, _export);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L209"
        return false;
    }

package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _filterType(_typ:stdgo._internal.go.ast.Ast_expr.Expr, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L151"
        {
            final __type__ = _typ;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L153"
                return _f((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__());
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_parenexprdotparenexpr.__type__stdgodot_internaldotgodotastdotAst_parenexprdotParenExpr }))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L155"
                return stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, _f, _export);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType }))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L157"
                return stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elt, _f, _export);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_structtypedotstructtype.__type__stdgodot_internaldotgodotastdotAst_structtypedotStructType }))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L159"
                if (stdgo._internal.go.ast.Ast__filterfieldlist._filterFieldList((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields, _f, _export)) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).incomplete = true;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L162"
                return (((@:checkr (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType }))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value);
                var _b1 = @:assignType (stdgo._internal.go.ast.Ast__filterparamlist._filterParamList((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params, _f, _export) : Bool);
                var _b2 = @:assignType (stdgo._internal.go.ast.Ast__filterparamlist._filterParamList((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results, _f, _export) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L166"
                return (_b1 || _b2 : Bool);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_interfacetypedotinterfacetype.__type__stdgodot_internaldotgodotastdotAst_interfacetypedotInterfaceType }))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L168"
                if (stdgo._internal.go.ast.Ast__filterfieldlist._filterFieldList((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).methods, _f, _export)) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).incomplete = true;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L171"
                return (((@:checkr (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).methods ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_maptypedotmaptype.__type__stdgodot_internaldotgodotastdotAst_maptypedotMapType }))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value);
                var _b1 = @:assignType (stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key, _f, _export) : Bool);
                var _b2 = @:assignType (stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value, _f, _export) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L175"
                return (_b1 || _b2 : Bool);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_chantypedotchantype.__type__stdgodot_internaldotgodotastdotAst_chantypedotChanType }))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L177"
                return stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value, _f, _export);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L179"
        return false;
    }

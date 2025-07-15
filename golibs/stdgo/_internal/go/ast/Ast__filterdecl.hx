package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _filterDecl(_decl:stdgo._internal.go.ast.Ast_decl.Decl, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L234"
        {
            final __type__ = _decl;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_decldotdecl.__type__stdgodot_internaldotgodotastdotAst_decldotDecl)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_gendecldotgendecl.__type__stdgodot_internaldotgodotastdotAst_gendecldotGenDecl }))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs = stdgo._internal.go.ast.Ast__filterspeclist._filterSpecList((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs, _f, _export);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L237"
                return (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_decldotdecl.__type__stdgodot_internaldotgodotastdotAst_decldotDecl)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funcdecldotfuncdecl.__type__stdgodot_internaldotgodotastdotAst_funcdecldotFuncDecl }))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L239"
                return _f((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L241"
        return false;
    }

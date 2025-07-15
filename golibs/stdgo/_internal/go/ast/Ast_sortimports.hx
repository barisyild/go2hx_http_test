package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function sortImports(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L16"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls != null) for (__0 => _d in (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls) {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _d;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_decldotdecl.__type__stdgodot_internaldotgodotastdotAst_decldotDecl)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_gendecldotgendecl.__type__stdgodot_internaldotgodotastdotAst_gendecldotGenDecl })) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : false };
            }, _d = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L18"
            if ((!_ok || ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tok != (75 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L21"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L24"
            if (!(@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lparen.isValid()) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L26"
                continue;
            };
            var _i = @:assignType (0 : stdgo.GoInt);
            var _specs = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L32"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs != null) for (_j => _s in (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L33"
                if (((_j > _i : Bool) && (stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _s.pos()) > ((1 : stdgo.GoInt) + stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)].end()) : stdgo.GoInt) : Bool) : Bool)) {
                    _specs = (_specs.__append__(...(stdgo._internal.go.ast.Ast__sortspecs._sortSpecs(_fset, _f, ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs.__slice__(_i, _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>)) : Array<stdgo._internal.go.ast.Ast_spec.Spec>)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
                    _i = _j;
                };
            };
            _specs = (_specs.__append__(...(stdgo._internal.go.ast.Ast__sortspecs._sortSpecs(_fset, _f, ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs.__slice__(_i) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>)) : Array<stdgo._internal.go.ast.Ast_spec.Spec>)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs = _specs;
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L43"
            if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs.length) > (0 : stdgo.GoInt) : Bool)) {
                var _lastSpec = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs[(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.go.ast.Ast_spec.Spec);
                var _lastLine = @:assignType (stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _lastSpec.pos()) : stdgo.GoInt);
                var _rParenLine = @:assignType (stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rparen) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L47"
                while ((_rParenLine > (_lastLine + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L48"
                    _rParenLine--;
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L49"
                    _fset.file((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rparen).mergeLine(_rParenLine);
                };
            };
        };
    }

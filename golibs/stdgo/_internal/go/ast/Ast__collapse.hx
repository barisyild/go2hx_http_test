package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _collapse(_prev:stdgo._internal.go.ast.Ast_spec.Spec, _next:stdgo._internal.go.ast.Ast_spec.Spec):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L85"
        if (((stdgo._internal.go.ast.Ast__importpath._importPath(_next) != stdgo._internal.go.ast.Ast__importpath._importPath(_prev)) || (stdgo._internal.go.ast.Ast__importname._importName(_next) != stdgo._internal.go.ast.Ast__importname._importName(_prev)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L86"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L88"
        return ({
            final value = (@:checkr (stdgo.Go.typeAssert(({
                final __t__ = _prev;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_specdotspec.__type__stdgodot_internaldotgodotastdotAst_specdotSpec)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec })) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment;
            (value == null || (value : Dynamic).__nil__);
        });
    }

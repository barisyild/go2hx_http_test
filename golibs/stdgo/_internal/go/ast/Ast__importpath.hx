package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _importPath(_s:stdgo._internal.go.ast.Ast_spec.Spec):stdgo.GoString {
        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr (@:checkr (stdgo.Go.typeAssert(({
            final __t__ = _s;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_specdotspec.__type__stdgodot_internaldotgodotastdotAst_specdotSpec)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec })) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__()), _t:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L61"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L62"
            return _t?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L64"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }

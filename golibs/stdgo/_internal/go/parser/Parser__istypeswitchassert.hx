package stdgo._internal.go.parser;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.go.ast.Ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.go.build.constraint.Constraint;
import stdgo._internal.go.internal.typeparams.Typeparams;
function _isTypeSwitchAssert(_x:stdgo._internal.go.ast.Ast_expr.Expr):Bool {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _x;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typeassertexprdottypeassertexpr.__type__stdgodot_internaldotgodotastdotAst_typeassertexprdotTypeAssertExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>), _1 : false };
        }, _a = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2159"
        return (_ok && ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type == null) : Bool);
    }

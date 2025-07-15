package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function _andArg(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo.GoString {
        var _s = @:assignType ((_x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L95"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _x;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_orexprdotorexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_orexprdotOrExpr })) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _s = ((("(" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L98"
        return _s?.__copy__();
    }

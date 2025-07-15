package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function _appendSplitAnd(_list:stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>, _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr> {
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L557"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _x;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_andexprdotandexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_andexprdotAndExpr })) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _list = stdgo._internal.go.build.constraint.Constraint__appendsplitand._appendSplitAnd(_list, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                _list = stdgo._internal.go.build.constraint.Constraint__appendsplitand._appendSplitAnd(_list, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L560"
                return _list;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L562"
        return (_list.__append__(_x) : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>);
    }

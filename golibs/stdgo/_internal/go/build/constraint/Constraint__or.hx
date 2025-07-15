package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function _or(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _y:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L132"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr(_x, _y) : stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_orexprdotorexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_orexprdotOrExpr })) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_orexprdotorexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_orexprdotOrExpr }));
    }

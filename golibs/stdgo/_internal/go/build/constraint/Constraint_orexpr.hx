package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.go.build.constraint.Constraint_orexpr_static_extension.OrExpr_static_extension) @:using(stdgo._internal.go.build.constraint.Constraint_orexpr_static_extension.OrExpr_static_extension) class OrExpr {
    public var x : stdgo._internal.go.build.constraint.Constraint_expr.Expr = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
    public var y : stdgo._internal.go.build.constraint.Constraint_expr.Expr = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
    public function new(?x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, ?y:stdgo._internal.go.build.constraint.Constraint_expr.Expr) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr }, optional : false }])));
    public function __copy__() {
        return new OrExpr(x, y);
    }
}

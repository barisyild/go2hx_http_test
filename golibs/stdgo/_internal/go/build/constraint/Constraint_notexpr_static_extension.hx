package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(stdgo._internal.go.build.constraint.Constraint.NotExpr_asInterface) class NotExpr_static_extension {
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr> = _x;
        var _s = @:assignType (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L66"
        {
            final __type__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_andexprdotandexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_andexprdotAndExpr })) || stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_orexprdotorexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_orexprdotOrExpr }))) {
                _s = ((("(" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L70"
        return (("!" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function eval( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>, _ok:stdgo.GoString -> Bool):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L61"
        return !(@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.eval(_ok);
    }
    @:keep
    @:tdfield
    static public function _isExpr( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr> = _x;
    }
}

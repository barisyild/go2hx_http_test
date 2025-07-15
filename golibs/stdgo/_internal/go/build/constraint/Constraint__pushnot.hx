package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function _pushNot(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _not:Bool):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L517"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_notexprdotnotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_notexprdotNotExpr }))) {
                var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L522"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_tagexprdottagexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_tagexprdotTagExpr })) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>), _1 : false };
                    }, __0 = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && !_not : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L523"
                        return stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_notexprdotnotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_notexprdotNotExpr }));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L525"
                return stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, !_not);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_tagexprdottagexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_tagexprdotTagExpr }))) {
                var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L527"
                if (_not) {
                    //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L528"
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ x : stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_tagexprdottagexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_tagexprdotTagExpr })) } : stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_notexprdotnotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_notexprdotNotExpr })) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_notexprdotnotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_notexprdotNotExpr }));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L530"
                return stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_tagexprdottagexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_tagexprdotTagExpr }));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_andexprdotandexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_andexprdotAndExpr }))) {
                var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : __type__.__underlying__().value);
                var _x1 = @:assignType (stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, _not) : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                var _y1 = @:assignType (stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y, _not) : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L534"
                if (_not) {
                    //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L535"
                    return stdgo._internal.go.build.constraint.Constraint__or._or(_x1, _y1);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L537"
                if (((({
                    final __t__ = _x1;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) && (({
                    final __t__ = _y1;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L538"
                    return stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_andexprdotandexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_andexprdotAndExpr }));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L540"
                return stdgo._internal.go.build.constraint.Constraint__and._and(_x1, _y1);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_orexprdotorexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_orexprdotOrExpr }))) {
                var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : __type__.__underlying__().value);
                var _x1 = @:assignType (stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, _not) : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                var _y1 = @:assignType (stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y, _not) : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L544"
                if (_not) {
                    //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L545"
                    return stdgo._internal.go.build.constraint.Constraint__and._and(_x1, _y1);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L547"
                if (((({
                    final __t__ = _x1;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) && (({
                    final __t__ = _y1;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L548"
                    return stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_orexprdotorexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_orexprdotOrExpr }));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L550"
                return stdgo._internal.go.build.constraint.Constraint__or._or(_x1, _y1);
            } else {
                var _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __type__ == null ? (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L520"
                return _x;
            };
        };
    }

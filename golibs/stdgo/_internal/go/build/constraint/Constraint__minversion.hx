package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function _minVersion(_z:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _sign:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L44"
        {
            final __type__ = _z;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_andexprdotandexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_andexprdotAndExpr }))) {
                var _z:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : __type__.__underlying__().value);
                var _op = @:assignType (stdgo._internal.go.build.constraint.Constraint__andversion._andVersion : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L49"
                if ((_sign < (0 : stdgo.GoInt) : Bool)) {
                    _op = stdgo._internal.go.build.constraint.Constraint__orversion._orVersion;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L52"
                return _op(stdgo._internal.go.build.constraint.Constraint__minversion._minVersion((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, _sign), stdgo._internal.go.build.constraint.Constraint__minversion._minVersion((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y, _sign));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_orexprdotorexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_orexprdotOrExpr }))) {
                var _z:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : __type__.__underlying__().value);
                var _op = @:assignType (stdgo._internal.go.build.constraint.Constraint__orversion._orVersion : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L55"
                if ((_sign < (0 : stdgo.GoInt) : Bool)) {
                    _op = stdgo._internal.go.build.constraint.Constraint__andversion._andVersion;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L58"
                return _op(stdgo._internal.go.build.constraint.Constraint__minversion._minVersion((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, _sign), stdgo._internal.go.build.constraint.Constraint__minversion._minVersion((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y, _sign));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_notexprdotnotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_notexprdotNotExpr }))) {
                var _z:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L60"
                return stdgo._internal.go.build.constraint.Constraint__minversion._minVersion((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, -_sign);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_tagexprdottagexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_tagexprdotTagExpr }))) {
                var _z:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L62"
                if ((_sign < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L64"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L66"
                if ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag == (("go1" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L67"
                    return (0 : stdgo.GoInt);
                };
                var __tmp__ = stdgo._internal.go.build.constraint.Constraint__stringscut._stringsCut((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag?.__copy__(), ("go1." : stdgo.GoString)), __0:stdgo.GoString = __tmp__._0, _v:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_v?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L71"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L73"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L75"
                return _n;
            } else {
                var _z:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __type__ == null ? (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L46"
                return (-1 : stdgo.GoInt);
            };
        };
    }

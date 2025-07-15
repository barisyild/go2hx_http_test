package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function plusBuildLines(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        _x = stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot(_x, false);
        var _split:stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>>);
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L459"
        if (stdgo._internal.go.build.constraint.Constraint__appendsplitand._appendSplitAnd((null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>), _x) != null) for (__0 => _or in stdgo._internal.go.build.constraint.Constraint__appendsplitand._appendSplitAnd((null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>), _x)) {
            var _ands:stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>> = (null : stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>);
            //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L461"
            if (stdgo._internal.go.build.constraint.Constraint__appendsplitor._appendSplitOr((null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>), _or) != null) for (__1 => _and in stdgo._internal.go.build.constraint.Constraint__appendsplitor._appendSplitOr((null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>), _or)) {
                var _lits:stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L463"
                if (stdgo._internal.go.build.constraint.Constraint__appendsplitand._appendSplitAnd((null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>), _and) != null) for (__2 => _lit in stdgo._internal.go.build.constraint.Constraint__appendsplitand._appendSplitAnd((null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>), _and)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L464"
                    {
                        final __type__ = _lit;
                        if (stdgo.Go.typeEquals(({
                            final __t__ = __type__;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_tagexprdottagexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_tagexprdotTagExpr })) || stdgo.Go.typeEquals(({
                            final __t__ = __type__;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_exprdotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_exprdotExpr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_notexprdotnotexpr.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_notexprdotNotExpr }))) {
                            _lits = (_lits.__append__(_lit) : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>);
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L468"
                            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.go.build.constraint.Constraint__errcomplex._errComplex };
                        };
                    };
                };
                _ands = (_ands.__append__(_lits) : stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>);
            };
            _split = (_split.__append__(_ands) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>>);
        };
        var _maxOr = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L480"
        if (_split != null) for (__1 => _or in _split) {
            //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L481"
            if ((_maxOr < (_or.length) : Bool)) {
                _maxOr = (_or.length);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L485"
        if (_maxOr == ((1 : stdgo.GoInt))) {
            var _lits:stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>);
            //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L487"
            if (_split != null) for (__2 => _or in _split) {
                _lits = (_lits.__append__(...(_or[(0 : stdgo.GoInt)] : Array<stdgo._internal.go.build.constraint.Constraint_expr.Expr>)) : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>);
            };
            _split = (new stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>>(1, 1, ...[(new stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>(1, 1, ...[_lits]) : stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>)]) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>>);
        };
        var _lines:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L495"
        if (_split != null) for (__2 => _or in _split) {
            var _line = @:assignType (("// +build" : stdgo.GoString) : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L497"
            if (_or != null) for (__3 => _and in _or) {
                var _clause = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L499"
                if (_and != null) for (_i => _lit in _and) {
                    //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L500"
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        _clause = (_clause + (("," : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    _clause = (_clause + ((_lit.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _line = (_line + (((" " : stdgo.GoString) + _clause?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _lines = (_lines.__append__(_line?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L510"
        return { _0 : _lines, _1 : (null : stdgo.Error) };
    }

package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function _parseExpr(_text:stdgo.GoString):{ var _0 : stdgo._internal.go.build.constraint.Constraint_expr.Expr; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _x = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr), _err = (null : stdgo.Error);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L209"
                        {
                            var _e = @:assignType ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (({
                                final value = _e;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L210"
                                {
                                    var __tmp__ = @:castTranslate try {
                                        { _0 : (stdgo.Go.typeAssert(_e, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_syntaxerrordotSyntaxError })) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>), _1 : true };
                                    } catch(__exception__) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>), _1 : false };
                                    }, _e = __tmp__._0, _ok = __tmp__._1;
                                    if (_ok) {
                                        _err = stdgo.Go.asInterface(_e, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_syntaxerrordotSyntaxError }));
                                        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L212"
                                        return;
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L214"
                                throw ({
                                    final __t__ = _e;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                });
                            };
                        };
                    };
                    a();
                }) });
            };
            var _p = (stdgo.Go.setRef(({ _s : _text?.__copy__() } : stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_t_exprparserdott_exprparser.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_t_exprparserdotT_exprParser })) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_t_exprparser.T_exprParser>);
            _x = _p._or();
            //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L220"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L221"
                throw new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ offset : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, err : (("unexpected token " : stdgo.GoString) + (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tok?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_syntaxerrordotSyntaxError })) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>), _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_syntaxerrordotSyntaxError), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotbuilddotconstraintdotconstraint_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotgodotbuilddotconstraintdotConstraint_syntaxerrordotSyntaxError })));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L223"
            {
                final __ret__:{ var _0 : stdgo._internal.go.build.constraint.Constraint_expr.Expr; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.build.constraint.Constraint_expr.Expr; var _1 : stdgo.Error; } = { _0 : _x, _1 : (null : stdgo.Error) };
                    _x = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _x = __ret__._0;
                _err = __ret__._1;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : _x, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : _x, _1 : _err };
            };
        };
    }

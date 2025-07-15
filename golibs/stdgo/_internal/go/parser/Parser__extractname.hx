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
function _extractName(_x:stdgo._internal.go.ast.Ast_expr.Expr, _force:Bool):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } {
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2648"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2650"
                return { _0 : _x, _1 : (null : stdgo._internal.go.ast.Ast_expr.Expr) };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_binaryexprdotbinaryexpr.__type__stdgodot_internaldotgodotastdotAst_binaryexprdotBinaryExpr }))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2652"
                {
                    final __value__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
                    if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2654"
                        {
                            var __tmp__ = @:castTranslate try {
                                { _0 : (stdgo.Go.typeAssert(({
                                    final __t__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                            } catch(__exception__) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                            }, _name = __tmp__._0, __0 = __tmp__._1;
                            if ((({
                                final value = _name;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            }) && ((_force || stdgo._internal.go.parser.Parser__istypeelem._isTypeElem((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y) : Bool)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2656"
                                return { _0 : _name, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ star : (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opPos, x : (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y } : stdgo._internal.go.ast.Ast_starexpr.StarExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr })) };
                            };
                        };
                    } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2659"
                        {
                            var __tmp__ = stdgo._internal.go.parser.Parser__extractname._extractName((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x, (_force || stdgo._internal.go.parser.Parser__istypeelem._isTypeElem((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y) : Bool)), _name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __tmp__._0, _lhs:stdgo._internal.go.ast.Ast_expr.Expr = __tmp__._1;
                            if ((({
                                final value = _name;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            }) && (_lhs != null) : Bool)) {
                                var _op = @:assignType ((_x : stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr)?.__copy__() : stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr);
                                _op.x = _lhs;
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2663"
                                return { _0 : _name, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(_op, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_binaryexprdotbinaryexpr.__type__stdgodot_internaldotgodotastdotAst_binaryexprdotBinaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_binaryexprdotbinaryexpr.__type__stdgodot_internaldotgodotastdotAst_binaryexprdotBinaryExpr })) };
                            };
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_callexprdotcallexpr.__type__stdgodot_internaldotgodotastdotAst_callexprdotCallExpr }))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2667"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fun;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, _name = __tmp__._0, __0 = __tmp__._1;
                    if (({
                        final value = _name;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2668"
                        if (((((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args.length) == ((1 : stdgo.GoInt)) && (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).ellipsis == ((0 : stdgo._internal.go.token.Token_pos.Pos)) : Bool) && ((_force || stdgo._internal.go.parser.Parser__istypeelem._isTypeElem((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args[(0 : stdgo.GoInt)]) : Bool)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2670"
                            return { _0 : _name, _1 : (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args[(0 : stdgo.GoInt)] };
                        };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L2674"
        return { _0 : null, _1 : _x };
    }

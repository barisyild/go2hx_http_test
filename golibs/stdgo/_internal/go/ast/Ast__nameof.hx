package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _nameOf(_f:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L313"
        {
            var _r = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).recv;
            if ((({
                final value = _r;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.length == (1 : stdgo.GoInt)) : Bool)) {
                var _t = @:assignType ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type : stdgo._internal.go.ast.Ast_expr.Expr);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L317"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _t;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : false };
                    }, _p = __tmp__._0, __0 = __tmp__._1;
                    if (({
                        final value = _p;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _t = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L321"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _t;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, _p = __tmp__._0, __1 = __tmp__._1;
                    if (({
                        final value = _p;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L322"
                        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__() : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/filter.go#L326"
        return (@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__();
    }

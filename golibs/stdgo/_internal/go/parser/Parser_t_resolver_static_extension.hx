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
@:keep @:allow(stdgo._internal.go.parser.Parser.T_resolver_asInterface) class T_resolver_static_extension {
    @:keep
    @:tdfield
    static public function _walkBody( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L606"
            if (({
                final value = _body;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L607"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L609"
            _r._openLabelScope();
            {
                final __f__ = _r._closeLabelScope;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L611"
            _r._walkStmts((@:checkr _body ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list);
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _walkTParams( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L601"
        _r._declareList(_list, (3 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L602"
        _r._resolveList(_list);
    }
    @:keep
    @:tdfield
    static public function _walkFieldList( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L590"
        if (({
            final value = _list;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L591"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L593"
        _r._resolveList(_list);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L594"
        _r._declareList(_list, _kind);
    }
    @:keep
    @:tdfield
    static public function _walkRecv( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _recv:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L547"
        if ((({
            final value = _recv;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr _recv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L548"
            return;
        };
        var _typ = @:assignType ((@:checkr (@:checkr _recv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type : stdgo._internal.go.ast.Ast_expr.Expr);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L551"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _typ;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : false };
            }, _ptr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _typ = (@:checkr _ptr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
            };
        };
        var _declareExprs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        var _resolveExprs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L557"
        {
            final __type__ = _typ;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr }))) {
                var _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value);
                _declareExprs = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[(@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).index]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                _resolveExprs = (_resolveExprs.__append__((@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexlistexprdotindexlistexpr.__type__stdgodot_internaldotgodotastdotAst_indexlistexprdotIndexListExpr }))) {
                var _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value);
                _declareExprs = (@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).indices;
                _resolveExprs = (_resolveExprs.__append__((@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            } else {
                var _typ:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                _resolveExprs = (_resolveExprs.__append__(_typ) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L567"
        if (_declareExprs != null) for (__0 => _expr in _declareExprs) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L568"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _expr;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _id = __tmp__._0, __1 = __tmp__._1;
                if (({
                    final value = _id;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L569"
                    _r._declare(({
                        final __t__ = _expr;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), (null : stdgo.AnyInterface), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope, (3 : stdgo._internal.go.ast.Ast_objkind.ObjKind), _id);
                } else {
                    _resolveExprs = (_resolveExprs.__append__(_expr) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L576"
        if (_resolveExprs != null) for (__1 => _expr in _resolveExprs) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L577"
            if (_expr != null) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L578"
                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), _expr);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L582"
        if (((@:checkr _recv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>) != null) for (__2 => _f in ((@:checkr _recv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>)) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L583"
            if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L584"
                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _declareList( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L535"
        if (({
            final value = _list;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L536"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L538"
        if ((@:checkr _list ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list != null) for (__0 => _f in (@:checkr _list ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L539"
            _r._declare(new stdgo.AnyInterface(stdgo.Go.asInterface(_f, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField }))), (null : stdgo.AnyInterface), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope, _kind, ...((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>));
        };
    }
    @:keep
    @:tdfield
    static public function _resolveList( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L524"
        if (({
            final value = _list;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L525"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L527"
        if ((@:checkr _list ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list != null) for (__0 => _f in (@:checkr _list ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L528"
            if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L529"
                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _walkFuncType( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L517"
        _r._resolveList((@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L518"
        _r._resolveList((@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L519"
        _r._declareList((@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L520"
        _r._declareList((@:checkr _typ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
    }
    @:keep
    @:tdfield
    static public function visit( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L251"
            if ((false && (_node != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L252"
                _r._trace(("node %T@%v" : stdgo.GoString), ({
                    final __t__ = _node;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(stdgo.Go.asInterface(_node.pos(), _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L255"
            {
                final __type__ = _node;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L259"
                    _r._resolve(_n, true);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funclitdotfunclit.__type__stdgodot_internaldotgodotastdotAst_funclitdotFuncLit }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L262"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L264"
                    _r._walkFuncType((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L265"
                    _r._walkBody((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectorexprdotselectorexpr.__type__stdgodot_internaldotgodotastdotAst_selectorexprdotSelectorExpr }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L268"
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_structtypedotstructtype.__type__stdgodot_internaldotgodotastdotAst_structtypedotStructType }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L273"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L275"
                    _r._walkFieldList((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L278"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L280"
                    _r._walkFuncType(_n);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_compositelitdotcompositelit.__type__stdgodot_internaldotgodotastdotAst_compositelitdotCompositeLit }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L283"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L284"
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L286"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elts != null) for (__0 => _e in (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elts) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L287"
                        {
                            var __tmp__ = @:castTranslate try {
                                { _0 : (stdgo.Go.typeAssert(({
                                    final __t__ = _e;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_keyvalueexprdotkeyvalueexpr.__type__stdgodot_internaldotgodotastdotAst_keyvalueexprdotKeyValueExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>), _1 : true };
                            } catch(__exception__) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>), _1 : false };
                            }, _kv = __tmp__._0, __1 = __tmp__._1;
                            if (({
                                final value = _kv;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L291"
                                {
                                    var __tmp__ = @:castTranslate try {
                                        { _0 : (stdgo.Go.typeAssert(({
                                            final __t__ = (@:checkr _kv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                                    } catch(__exception__) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                                    }, _ident = __tmp__._0, __2 = __tmp__._1;
                                    if (({
                                        final value = _ident;
                                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                    })) {
                                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L292"
                                        _r._resolve(_ident, false);
                                    } else {
                                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L294"
                                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _kv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key);
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L296"
                                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _kv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value);
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L298"
                                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), _e);
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_interfacetypedotinterfacetype.__type__stdgodot_internaldotgodotastdotAst_interfacetypedotInterfaceType }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L303"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L305"
                    _r._walkFieldList((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).methods, (5 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_labeledstmtdotlabeledstmt.__type__stdgodot_internaldotgodotastdotAst_labeledstmtdotLabeledStmt }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L309"
                    _r._declare(new stdgo.AnyInterface(stdgo.Go.asInterface(_n, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_labeledstmtdotlabeledstmt.__type__stdgodot_internaldotgodotastdotAst_labeledstmtdotLabeledStmt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_labeledstmtdotlabeledstmt.__type__stdgodot_internaldotgodotastdotAst_labeledstmtdotLabeledStmt }))), (null : stdgo.AnyInterface), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._labelScope, (6 : stdgo._internal.go.ast.Ast_objkind.ObjKind), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L310"
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stmt);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L313"
                    _r._walkExprs((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rhs);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L314"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tok == ((47 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L315"
                        _r._shortVarDecl(_n);
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L317"
                        _r._walkExprs((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs);
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_branchstmtdotbranchstmt.__type__stdgodot_internaldotgodotastdotAst_branchstmtdotBranchStmt }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L322"
                    if ((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tok != (69 : stdgo._internal.go.token.Token_token.Token)) && ({
                        final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) : Bool)) {
                        var _depth = @:assignType (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetStack[(_depth : stdgo.GoInt)] = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetStack[(_depth : stdgo.GoInt)].__append__((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L328"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L330"
                    _r._walkStmts((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ifstmtdotifstmt.__type__stdgodot_internaldotgodotastdotAst_ifstmtdotIfStmt }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L333"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L335"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init != null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L336"
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L338"
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cond);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L339"
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L340"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).else_ != null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L341"
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).else_);
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_caseclausedotcaseclause.__type__stdgodot_internaldotgodotastdotAst_caseclausedotCaseClause }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L345"
                    _r._walkExprs((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L346"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L348"
                    _r._walkStmts((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_switchstmtdotswitchstmt.__type__stdgodot_internaldotgodotastdotAst_switchstmtdotSwitchStmt }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L351"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L353"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init != null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L354"
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L356"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag != null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L361"
                        if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init != null) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L362"
                            _r._openScope((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag.pos());
                            {
                                final __f__ = _r._closeScope;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L365"
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L367"
                    if (({
                        final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L368"
                        _r._walkStmts((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list);
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typeswitchstmtdottypeswitchstmt.__type__stdgodot_internaldotgodotastdotAst_typeswitchstmtdotTypeSwitchStmt }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L372"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init != null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L373"
                        _r._openScope(_n.pos());
                        {
                            final __f__ = _r._closeScope;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L375"
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L377"
                    _r._openScope((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).assign.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L379"
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).assign);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L382"
                    if (({
                        final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L383"
                        _r._walkStmts((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list);
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commclausedotcommclause.__type__stdgodot_internaldotgodotastdotAst_commclausedotCommClause }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L387"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L389"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comm != null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L390"
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comm);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L392"
                    _r._walkStmts((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectstmtdotselectstmt.__type__stdgodot_internaldotgodotastdotAst_selectstmtdotSelectStmt }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L397"
                    if (({
                        final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L398"
                        _r._walkStmts((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list);
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_forstmtdotforstmt.__type__stdgodot_internaldotgodotastdotAst_forstmtdotForStmt }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L402"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L404"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init != null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L405"
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L407"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cond != null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L408"
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cond);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L410"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).post != null) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L411"
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).post);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L413"
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_rangestmtdotrangestmt.__type__stdgodot_internaldotgodotastdotAst_rangestmtdotRangeStmt }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L416"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L418"
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                    var _lhs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L420"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key != null) {
                        _lhs = (_lhs.__append__((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L423"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value != null) {
                        _lhs = (_lhs.__append__((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L426"
                    if (((_lhs.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L427"
                        if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tok == ((47 : stdgo._internal.go.token.Token_token.Token))) {
                            var _as = (stdgo.Go.setRef(({ lhs : _lhs, tok : (47 : stdgo._internal.go.token.Token_token.Token), tokPos : (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tokPos, rhs : (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (79 : stdgo._internal.go.token.Token_token.Token), x : (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x } : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr }))]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) } : stdgo._internal.go.ast.Ast_assignstmt.AssignStmt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt })) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>);
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L441"
                            _r._walkLHS(_lhs);
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L442"
                            _r._shortVarDecl(_as);
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L444"
                            _r._walkExprs(_lhs);
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L447"
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_gendecldotgendecl.__type__stdgodot_internaldotgodotastdotAst_gendecldotGenDecl }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L451"
                    {
                        final __value__ = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tok;
                        if (__value__ == ((64 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L453"
                            if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs != null) for (_i => _spec in (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs) {
                                var _spec = (stdgo.Go.typeAssert(({
                                    final __t__ = _spec;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_specdotspec.__type__stdgodot_internaldotgodotastdotAst_specdotSpec)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_valuespecdotvaluespec.__type__stdgodot_internaldotgodotastdotAst_valuespecdotValueSpec })) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
                                var _kind = @:assignType (2 : stdgo._internal.go.ast.Ast_objkind.ObjKind);
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L456"
                                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tok == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                                    _kind = (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind);
                                };
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L459"
                                _r._walkExprs((@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).values);
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L460"
                                if ((@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L461"
                                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                                };
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L463"
                                _r._declare(new stdgo.AnyInterface(stdgo.Go.asInterface(_spec, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_valuespecdotvaluespec.__type__stdgodot_internaldotgodotastdotAst_valuespecdotValueSpec), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_valuespecdotvaluespec.__type__stdgodot_internaldotgodotastdotAst_valuespecdotValueSpec }))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope, _kind, ...((@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>));
                            };
                        } else if (__value__ == ((84 : stdgo._internal.go.token.Token_token.Token))) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L466"
                            if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs != null) for (__0 => _spec in (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs) {
                                var _spec = (stdgo.Go.typeAssert(({
                                    final __t__ = _spec;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_specdotspec.__type__stdgodot_internaldotgodotastdotAst_specdotSpec)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typespecdottypespec.__type__stdgodot_internaldotgodotastdotAst_typespecdotTypeSpec })) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L471"
                                _r._declare(new stdgo.AnyInterface(stdgo.Go.asInterface(_spec, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typespecdottypespec.__type__stdgodot_internaldotgodotastdotAst_typespecdotTypeSpec), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typespecdottypespec.__type__stdgodot_internaldotgodotastdotAst_typespecdotTypeSpec }))), (null : stdgo.AnyInterface), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope, (3 : stdgo._internal.go.ast.Ast_objkind.ObjKind), (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name);
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L472"
                                if (({
                                    final value = (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).typeParams;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                })) {
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L473"
                                    _r._openScope(_spec.pos());
                                    {
                                        final __f__ = _r._closeScope;
                                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L475"
                                    _r._walkTParams((@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).typeParams);
                                };
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L477"
                                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funcdecldotfuncdecl.__type__stdgodot_internaldotgodotastdotAst_funcdecldotFuncDecl }))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L483"
                    _r._openScope(_n.pos());
                    {
                        final __f__ = _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L486"
                    _r._walkRecv((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).recv);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L490"
                    if (({
                        final value = (@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type ?? throw stdgo.Error._nullPointerDereference.__underlying__()).typeParams;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L491"
                        _r._walkTParams((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type ?? throw stdgo.Error._nullPointerDereference.__underlying__()).typeParams);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L497"
                    _r._resolveList((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L498"
                    _r._resolveList((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L499"
                    _r._declareList((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).recv, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L500"
                    _r._declareList((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L501"
                    _r._declareList((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L503"
                    _r._walkBody((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L504"
                    if ((({
                        final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).recv;
                        (value == null || (value : Dynamic).__nil__);
                    }) && ((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != ("init" : stdgo.GoString)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L505"
                        _r._declare(new stdgo.AnyInterface(stdgo.Go.asInterface(_n, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funcdecldotfuncdecl.__type__stdgodot_internaldotgodotastdotAst_funcdecldotFuncDecl), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funcdecldotfuncdecl.__type__stdgodot_internaldotgodotastdotAst_funcdecldotFuncDecl }))), (null : stdgo.AnyInterface), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pkgScope, (5 : stdgo._internal.go.ast.Ast_objkind.ObjKind), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name);
                    };
                } else {
                    var _n:stdgo._internal.go.ast.Ast_node.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast_node.Node) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L509"
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_visitor.Visitor = stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver }));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L512"
            {
                final __ret__:stdgo._internal.go.ast.Ast_visitor.Visitor = (null : stdgo._internal.go.ast.Ast_visitor.Visitor);
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
                return (null : stdgo._internal.go.ast.Ast_visitor.Visitor);
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
                return (null : stdgo._internal.go.ast.Ast_visitor.Visitor);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _walkStmts( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L245"
        if (_list != null) for (__0 => _stmt in _list) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L246"
            stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), _stmt);
        };
    }
    @:keep
    @:tdfield
    static public function _walkLHS( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L236"
        if (_list != null) for (__0 => _expr in _list) {
            var _expr = @:assignType (stdgo._internal.go.parser.Parser__unparen._unparen(_expr) : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L238"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _expr;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, __1 = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok && (_expr != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L239"
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), _expr);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _walkExprs( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L230"
        if (_list != null) for (__0 => _node in _list) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L231"
            stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), _node);
        };
    }
    @:keep
    @:tdfield
    static public function _resolve( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _collectUnresolved:Bool):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L197"
        if (({
            final value = (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L198"
            throw new stdgo.AnyInterface(_r._sprintf(("%v: identifier %s already declared or resolved" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_ident.pos(), _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)), new stdgo.AnyInterface((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L202"
        if ((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == (("_" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L203"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L205"
        {
            var _s = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope;
            while (({
                final value = _s;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L206"
                {
                    var _obj = _s.lookup((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.__copy__());
                    if (({
                        final value = _obj;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L207"
                        if (false) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L208"
                            _r._trace(("resolved %v:%s to %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_ident.pos(), _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)), new stdgo.AnyInterface((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_obj, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_objectdotobject.__type__stdgodot_internaldotgodotastdotAst_objectdotObject), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_objectdotobject.__type__stdgodot_internaldotgodotastdotAst_objectdotObject }))));
                        };
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L210"
                        stdgo._internal.go.parser.Parser__assert._assert((@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != ((stdgo.Go.str() : stdgo.GoString)), ("obj with no name" : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L213"
                        {
                            var __tmp__ = @:castTranslate try {
                                { _0 : (stdgo.Go.typeAssert((@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decl, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                            } catch(__exception__) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                            }, __0 = __tmp__._0, _ok = __tmp__._1;
                            if (!_ok) {
                                (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj = _obj;
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L216"
                        return;
                    };
                };
                _s = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).outer;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L223"
        if (_collectUnresolved) {
            (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj = stdgo._internal.go.parser.Parser__unresolved._unresolved;
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unresolved = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unresolved.__append__(_ident) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
        };
    }
    @:keep
    @:tdfield
    static public function _shortVarDecl( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _decl:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        var _n = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L163"
        if ((@:checkr _decl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs != null) for (__0 => _x in (@:checkr _decl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L164"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _x;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _ident = __tmp__._0, _isIdent = __tmp__._1;
                if (_isIdent) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L165"
                    stdgo._internal.go.parser.Parser__assert._assert(({
                        final value = (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj;
                        (value == null || (value : Dynamic).__nil__);
                    }), ("identifier already declared or resolved" : stdgo.GoString));
                    var _obj = stdgo._internal.go.ast.Ast_newobj.newObj((4 : stdgo._internal.go.ast.Ast_objkind.ObjKind), (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__());
                    (@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decl = new stdgo.AnyInterface(stdgo.Go.asInterface(_decl, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt })));
                    (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj = _obj;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L170"
                    if ((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != (("_" : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L171"
                        if (false) {
                            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L172"
                            _r._trace(("declaring %s@%v" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_ident.pos(), _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)));
                        };
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L174"
                        {
                            var _alt = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope.insert(_obj);
                            if (({
                                final value = _alt;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj = _alt;
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L177"
                                _n++;
                            };
                        };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L182"
        if (((_n == (0 : stdgo.GoInt)) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declErr != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L183"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declErr((@:checkr _decl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs[(0 : stdgo.GoInt)].pos(), ("no new variables on left side of :=" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _declare( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _decl:stdgo.AnyInterface, _data:stdgo.AnyInterface, _scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind, _idents:haxe.Rest<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Void {
        var _idents = new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>(_idents.length, 0, ..._idents);
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L129"
        if (_idents != null) for (__0 => _ident in _idents) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L130"
            if (({
                final value = (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L131"
                throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v: identifier %s already declared or resolved" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_ident.pos(), _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)), new stdgo.AnyInterface((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            var _obj = stdgo._internal.go.ast.Ast_newobj.newObj(_kind, (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__());
            (@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decl = _decl;
            (@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data = _data;
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L140"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_decl, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, __1 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj = _obj;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L143"
            if ((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != (("_" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L144"
                if (false) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L145"
                    _r._trace(("declaring %s@%v" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_ident.pos(), _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L147"
                {
                    var _alt = _scope.insert(_obj);
                    if ((({
                        final value = _alt;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declErr != null) : Bool)) {
                        var _prevDecl = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L149"
                        {
                            var _pos = @:assignType (_alt.pos() : stdgo._internal.go.token.Token_pos.Pos);
                            if (_pos.isValid()) {
                                _prevDecl = _r._sprintf(("\n\tprevious declaration at %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_pos, _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)))?.__copy__();
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L152"
                        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declErr(_ident.pos(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s redeclared in this block%s" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_prevDecl, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _closeLabelScope( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        var _n = @:assignType (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _scope = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._labelScope;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L117"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetStack[(_n : stdgo.GoInt)] != null) for (__0 => _ident in (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetStack[(_n : stdgo.GoInt)]) {
            (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj = _scope.lookup((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L119"
            if ((({
                final value = (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj;
                (value == null || (value : Dynamic).__nil__);
            }) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declErr != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L120"
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declErr(_ident.pos(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("label %s undefined" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
            };
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetStack = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetStack.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>>);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._labelScope = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._labelScope ?? throw stdgo.Error._nullPointerDereference.__underlying__()).outer;
    }
    @:keep
    @:tdfield
    static public function _openLabelScope( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._labelScope = stdgo._internal.go.ast.Ast_newscope.newScope((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._labelScope);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetStack = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._targetStack.__append__((null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>)) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>>);
    }
    @:keep
    @:tdfield
    static public function _closeScope( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L101"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._depth--;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L102"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L103"
            _r._trace(("closing scope" : stdgo.GoString));
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope ?? throw stdgo.Error._nullPointerDereference.__underlying__()).outer;
    }
    @:keep
    @:tdfield
    static public function _openScope( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L90"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._depth++;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L91"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._depth > (1000 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L92"
            throw new stdgo.AnyInterface(stdgo.Go.asInterface(({ _pos : _pos, _msg : ("exceeded max scope depth during object resolution" : stdgo.GoString) } : stdgo._internal.go.parser.Parser_t_bailout.T_bailout), _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_bailoutdott_bailout.__type__stdgodot_internaldotgodotparserdotParser_t_bailoutdotT_bailout), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_bailoutdott_bailout.__type__stdgodot_internaldotgodotparserdotParser_t_bailoutdotT_bailout));
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L94"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L95"
            _r._trace(("opening scope @%v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_pos, _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)));
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope = stdgo._internal.go.ast.Ast_newscope.newScope((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope);
    }
    @:keep
    @:tdfield
    static public function _sprintf( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L80"
        if (_args != null) for (_i => _arg in _args) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L81"
            {
                final __type__ = _arg;
                if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)) {
                    var _arg:stdgo._internal.go.token.Token_pos.Pos = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__().value);
                    _args[(_i : stdgo.GoInt)] = new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handle.position(_arg), _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_positiondotposition.__type__stdgodot_internaldotgodottokendotToken_positiondotPosition), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_positiondotposition.__type__stdgodot_internaldotgodottokendotToken_positiondotPosition));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L86"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _trace( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L76"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface((stdgo._internal.strings.Strings_repeat.repeat((". " : stdgo.GoString), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._depth) + _r._sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
}

package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function walk(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _node:stdgo._internal.go.ast.Ast_node.Node):Void {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L51"
        {
            _v = _v.visit(_node);
            if (_v == null) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L52"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L58"
        {
            final __type__ = _node;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentdotcomment.__type__stdgodot_internaldotgodotastdotAst_commentdotComment }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L64"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list != null) for (__0 => _c in (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L65"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentdotcomment.__type__stdgodot_internaldotgodotastdotAst_commentdotComment })));
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L69"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L70"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L72"
                stdgo._internal.go.ast.Ast__walkidentlist._walkIdentList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L73"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L74"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L76"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L77"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L79"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L80"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L84"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list != null) for (__0 => _f in (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L85"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField })));
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badexprdotbadexpr.__type__stdgodot_internaldotgodotastdotAst_badexprdotBadExpr })) || stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) || stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit }))) {
                var _n:stdgo._internal.go.ast.Ast_node.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast_node.Node) : cast __type__;
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ellipsisdotellipsis.__type__stdgodot_internaldotgodotastdotAst_ellipsisdotEllipsis }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L93"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elt != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L94"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elt);
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funclitdotfunclit.__type__stdgodot_internaldotgodotastdotAst_funclitdotFuncLit }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L98"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType })));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L99"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_compositelitdotcompositelit.__type__stdgodot_internaldotgodotastdotAst_compositelitdotCompositeLit }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L102"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L103"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L105"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elts);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_parenexprdotparenexpr.__type__stdgodot_internaldotgodotastdotAst_parenexprdotParenExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L108"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectorexprdotselectorexpr.__type__stdgodot_internaldotgodotastdotAst_selectorexprdotSelectorExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L111"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L112"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sel, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexexprdotindexexpr.__type__stdgodot_internaldotgodotastdotAst_indexexprdotIndexExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L115"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L116"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).index);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_indexlistexprdotindexlistexpr.__type__stdgodot_internaldotgodotastdotAst_indexlistexprdotIndexListExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L119"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L120"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).indices != null) for (__0 => _index in (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).indices) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L121"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, _index);
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_sliceexprdotsliceexpr.__type__stdgodot_internaldotgodotastdotAst_sliceexprdotSliceExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L125"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L126"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).low != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L127"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).low);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L129"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).high != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L130"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).high);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L132"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L133"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max);
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typeassertexprdottypeassertexpr.__type__stdgodot_internaldotgodotastdotAst_typeassertexprdotTypeAssertExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L137"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L138"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L139"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_callexprdotcallexpr.__type__stdgodot_internaldotgodotastdotAst_callexprdotCallExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L143"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fun);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L144"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_starexprdotstarexpr.__type__stdgodot_internaldotgodotastdotAst_starexprdotStarExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L147"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L150"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_binaryexprdotbinaryexpr.__type__stdgodot_internaldotgodotastdotAst_binaryexprdotBinaryExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L153"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L154"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_keyvalueexprdotkeyvalueexpr.__type__stdgodot_internaldotgodotastdotAst_keyvalueexprdotKeyValueExpr }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L157"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L158"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L162"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).len != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L163"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).len);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L165"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elt);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_structtypedotstructtype.__type__stdgodot_internaldotgodotastdotAst_structtypedotStructType }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L168"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L171"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).typeParams;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L172"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).typeParams, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L174"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L175"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L177"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L178"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })));
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
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L182"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).methods, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_maptypedotmaptype.__type__stdgodot_internaldotgodotastdotAst_maptypedotMapType }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L185"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L186"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_chantypedotchantype.__type__stdgodot_internaldotgodotastdotAst_chantypedotChanType }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L189"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_badstmtdotbadstmt.__type__stdgodot_internaldotgodotastdotAst_badstmtdotBadStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_declstmtdotdeclstmt.__type__stdgodot_internaldotgodotastdotAst_declstmtdotDeclStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L196"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decl);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_emptystmtdotemptystmt.__type__stdgodot_internaldotgodotastdotAst_emptystmtdotEmptyStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_labeledstmtdotlabeledstmt.__type__stdgodot_internaldotgodotastdotAst_labeledstmtdotLabeledStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L202"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L203"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stmt);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprstmtdotexprstmt.__type__stdgodot_internaldotgodotastdotAst_exprstmtdotExprStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L206"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_sendstmtdotsendstmt.__type__stdgodot_internaldotgodotastdotAst_sendstmtdotSendStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L209"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).chan);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L210"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_incdecstmtdotincdecstmt.__type__stdgodot_internaldotgodotastdotAst_incdecstmtdotIncDecStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L213"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L216"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L217"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rhs);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_gostmtdotgostmt.__type__stdgodot_internaldotgodotastdotAst_gostmtdotGoStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L220"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).call, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_callexprdotcallexpr.__type__stdgodot_internaldotgodotastdotAst_callexprdotCallExpr })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_deferstmtdotdeferstmt.__type__stdgodot_internaldotgodotastdotAst_deferstmtdotDeferStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L223"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).call, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_callexprdotcallexpr.__type__stdgodot_internaldotgodotastdotAst_callexprdotCallExpr })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_returnstmtdotreturnstmt.__type__stdgodot_internaldotgodotastdotAst_returnstmtdotReturnStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L226"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_branchstmtdotbranchstmt.__type__stdgodot_internaldotgodotastdotAst_branchstmtdotBranchStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L229"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L230"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })));
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
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L234"
                stdgo._internal.go.ast.Ast__walkstmtlist._walkStmtList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_ifstmtdotifstmt.__type__stdgodot_internaldotgodotastdotAst_ifstmtdotIfStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L237"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L238"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L240"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cond);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L241"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L242"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).else_ != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L243"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).else_);
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
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L247"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L248"
                stdgo._internal.go.ast.Ast__walkstmtlist._walkStmtList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_switchstmtdotswitchstmt.__type__stdgodot_internaldotgodotastdotAst_switchstmtdotSwitchStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L251"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L252"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L254"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L255"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tag);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L257"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typeswitchstmtdottypeswitchstmt.__type__stdgodot_internaldotgodotastdotAst_typeswitchstmtdotTypeSwitchStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L260"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L261"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L263"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).assign);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L264"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commclausedotcommclause.__type__stdgodot_internaldotgodotastdotAst_commclausedotCommClause }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L267"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comm != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L268"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comm);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L270"
                stdgo._internal.go.ast.Ast__walkstmtlist._walkStmtList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectstmtdotselectstmt.__type__stdgodot_internaldotgodotastdotAst_selectstmtdotSelectStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L273"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_forstmtdotforstmt.__type__stdgodot_internaldotgodotastdotAst_forstmtdotForStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L276"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L277"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).init);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L279"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cond != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L280"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cond);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L282"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).post != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L283"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).post);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L285"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_rangestmtdotrangestmt.__type__stdgodot_internaldotgodotastdotAst_rangestmtdotRangeStmt }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L288"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L289"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L291"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L292"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L294"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L295"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L299"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L300"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L302"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L303"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L305"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit })));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L306"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L307"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_valuespecdotvaluespec.__type__stdgodot_internaldotgodotastdotAst_valuespecdotValueSpec }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L311"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L312"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L314"
                stdgo._internal.go.ast.Ast__walkidentlist._walkIdentList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L315"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L316"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L318"
                stdgo._internal.go.ast.Ast__walkexprlist._walkExprList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).values);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L319"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L320"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typespecdottypespec.__type__stdgodot_internaldotgodotastdotAst_typespecdotTypeSpec }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L324"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L325"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L327"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L328"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).typeParams;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L329"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).typeParams, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L331"
                stdgo._internal.go.ast.Ast_walk.walk(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L332"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L333"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comment, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_baddecldotbaddecl.__type__stdgodot_internaldotgodotastdotAst_baddecldotBadDecl }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_gendecldotgendecl.__type__stdgodot_internaldotgodotastdotAst_gendecldotGenDecl }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L340"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L341"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L343"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs != null) for (__0 => _s in (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).specs) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L344"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, _s);
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
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L348"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L349"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L351"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).recv;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L352"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).recv, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L354"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L355"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType })));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L356"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L357"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt })));
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_filedotfile.__type__stdgodot_internaldotgodotastdotAst_filedotFile }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L362"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L363"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).doc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L365"
                stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L366"
                stdgo._internal.go.ast.Ast__walkdecllist._walkDeclList(_v, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_packagedotpackage.__type__stdgodot_internaldotgodotastdotAst_packagedotPackage }))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L372"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files != null) for (__0 => _f in (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L373"
                    stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_filedotfile.__type__stdgodot_internaldotgodotastdotAst_filedotFile })));
                };
            } else {
                var _n:stdgo._internal.go.ast.Ast_node.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast_node.Node) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L377"
                throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("ast.Walk: unexpected node type %T" : stdgo.GoString), ({
                    final __t__ = _n;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L380"
        _v.visit((null : stdgo._internal.go.ast.Ast_node.Node));
    }

package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.Object_asInterface) class Object_static_extension {
    @:keep
    @:tdfield
    static public function pos( _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> = _obj;
        var _name = @:assignType ((@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L90"
        {
            final __type__ = (@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decl;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fielddotfield.__type__stdgodot_internaldotgodotastdotAst_fielddotField }))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L92"
                if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names != null) for (__0 => _n in (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L93"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == (_name)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L94"
                        return _n.pos();
                    };
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec }))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L98"
                if ((({
                    final value = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == _name) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L99"
                    return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.pos();
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L101"
                return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path.pos();
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_valuespecdotvaluespec.__type__stdgodot_internaldotgodotastdotAst_valuespecdotValueSpec }))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L103"
                if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names != null) for (__0 => _n in (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L104"
                    if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == (_name)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L105"
                        return _n.pos();
                    };
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_typespecdottypespec.__type__stdgodot_internaldotgodotastdotAst_typespecdotTypeSpec }))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L109"
                if ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == (_name)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L110"
                    return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.pos();
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_funcdecldotfuncdecl.__type__stdgodot_internaldotgodotastdotAst_funcdecldotFuncDecl }))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L113"
                if ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == (_name)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L114"
                    return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.pos();
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_labeledstmtdotlabeledstmt.__type__stdgodot_internaldotgodotastdotAst_labeledstmtdotLabeledStmt }))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L117"
                if ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == (_name)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L118"
                    return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label.pos();
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_assignstmtdotassignstmt.__type__stdgodot_internaldotgodotastdotAst_assignstmtdotAssignStmt }))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L121"
                if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs != null) for (__0 => _x in (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lhs) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L122"
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
                        if ((_isIdent && ((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == _name) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L123"
                            return _ident.pos();
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_scopedotscope.__type__stdgodot_internaldotgodotastdotAst_scopedotScope }))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) : __type__.__underlying__().value);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L129"
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
}

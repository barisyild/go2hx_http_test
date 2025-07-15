package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.Scope_asInterface) class Scope_static_extension {
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = _s;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L50"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })), ("scope %p {" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_s, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_scopedotscope.__type__stdgodot_internaldotgodotastdotAst_scopedotScope), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_scopedotscope.__type__stdgodot_internaldotgodotastdotAst_scopedotScope }))));
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L51"
        if ((({
            final value = _s;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).objects.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L52"
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })));
            //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L53"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).objects != null) for (__0 => _obj in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).objects) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L54"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })), ("\t%s %s\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).kind, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_objkinddotobjkind.__type__stdgodot_internaldotgodotastdotAst_objkinddotObjKind), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_objkinddotobjkind.__type__stdgodot_internaldotgodotastdotAst_objkinddotObjKind)), new stdgo.AnyInterface((@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L57"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })), ("}\n" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L58"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function insert( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = _s;
        var _alt = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L41"
        {
            _alt = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).objects[(@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>));
            if (({
                final value = _alt;
                (value == null || (value : Dynamic).__nil__);
            })) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).objects[(@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name] = _obj;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L44"
        return _alt;
    }
    @:keep
    @:tdfield
    static public function lookup( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/scope.go#L33"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).objects[_name] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>));
    }
}

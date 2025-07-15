package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_object_static_extension.Object_static_extension) @:using(stdgo._internal.go.ast.Ast_object_static_extension.Object_static_extension) class Object {
    public var kind : stdgo._internal.go.ast.Ast_objkind.ObjKind = ((0 : stdgo.GoInt) : stdgo._internal.go.ast.Ast_objkind.ObjKind);
    public var name : stdgo.GoString = "";
    public var decl : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var data : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var type : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?kind:stdgo._internal.go.ast.Ast_objkind.ObjKind, ?name:stdgo.GoString, ?decl:stdgo.AnyInterface, ?data:stdgo.AnyInterface, ?type:stdgo.AnyInterface) {
        if (kind != null) this.kind = kind;
        if (name != null) this.name = name;
        if (decl != null) this.decl = decl;
        if (data != null) this.data = data;
        if (type != null) this.type = type;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "kind", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_objkinddotobjkind.__type__stdgodot_internaldotgodotastdotAst_objkinddotObjKind }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "decl", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }])));
    public function __copy__() {
        return new Object(kind, name, decl, data, type);
    }
}

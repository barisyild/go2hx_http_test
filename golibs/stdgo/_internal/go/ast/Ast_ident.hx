package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_ident_static_extension.Ident_static_extension) @:using(stdgo._internal.go.ast.Ast_ident_static_extension.Ident_static_extension) class Ident {
    public var namePos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var name : stdgo.GoString = "";
    public var obj : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
    public function new(?namePos:stdgo._internal.go.token.Token_pos.Pos, ?name:stdgo.GoString, ?obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>) {
        if (namePos != null) this.namePos = namePos;
        if (name != null) this.name = name;
        if (obj != null) this.obj = obj;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "namePos", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "obj", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_objectdotobject.__type__stdgodot_internaldotgodotastdotAst_objectdotObject }) }, optional : false }])));
    public function __copy__() {
        return new Ident(namePos, name, obj);
    }
}

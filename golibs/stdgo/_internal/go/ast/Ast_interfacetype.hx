package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_interfacetype_static_extension.InterfaceType_static_extension) @:using(stdgo._internal.go.ast.Ast_interfacetype_static_extension.InterfaceType_static_extension) class InterfaceType {
    public var interface_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var methods : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public var incomplete : Bool = false;
    public function new(?interface_:stdgo._internal.go.token.Token_pos.Pos, ?methods:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, ?incomplete:Bool) {
        if (interface_ != null) this.interface_ = interface_;
        if (methods != null) this.methods = methods;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "interface_", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "methods", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList }) }, optional : false }, { name : "incomplete", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new InterfaceType(interface_, methods, incomplete);
    }
}

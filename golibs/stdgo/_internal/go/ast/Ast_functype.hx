package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_functype_static_extension.FuncType_static_extension) @:using(stdgo._internal.go.ast.Ast_functype_static_extension.FuncType_static_extension) class FuncType {
    public var func : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var typeParams : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public var params : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public var results : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public function new(?func:stdgo._internal.go.token.Token_pos.Pos, ?typeParams:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, ?params:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, ?results:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) {
        if (func != null) this.func = func;
        if (typeParams != null) this.typeParams = typeParams;
        if (params != null) this.params = params;
        if (results != null) this.results = results;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "func", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "typeParams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList }) }, optional : false }, { name : "params", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList }) }, optional : false }, { name : "results", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList }) }, optional : false }])));
    public function __copy__() {
        return new FuncType(func, typeParams, params, results);
    }
}

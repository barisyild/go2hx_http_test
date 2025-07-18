package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_funcdecl_static_extension.FuncDecl_static_extension) @:using(stdgo._internal.go.ast.Ast_funcdecl_static_extension.FuncDecl_static_extension) class FuncDecl {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var recv : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
    public var name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public var type : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?recv:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, ?name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, ?type:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) {
        if (doc != null) this.doc = doc;
        if (recv != null) this.recv = recv;
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (body != null) this.body = body;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "doc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup }) }, optional : false }, { name : "recv", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_fieldlistdotfieldlist.__type__stdgodot_internaldotgodotastdotAst_fieldlistdotFieldList }) }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }) }, optional : false }, { name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_functypedotfunctype.__type__stdgodot_internaldotgodotastdotAst_functypedotFuncType }) }, optional : false }, { name : "body", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt }) }, optional : false }])));
    public function __copy__() {
        return new FuncDecl(doc, recv, name, type, body);
    }
}

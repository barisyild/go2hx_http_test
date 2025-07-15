package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_importspec_static_extension.ImportSpec_static_extension) @:using(stdgo._internal.go.ast.Ast_importspec_static_extension.ImportSpec_static_extension) class ImportSpec {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public var path : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
    public var comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var endPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, ?path:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>, ?comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?endPos:stdgo._internal.go.token.Token_pos.Pos) {
        if (doc != null) this.doc = doc;
        if (name != null) this.name = name;
        if (path != null) this.path = path;
        if (comment != null) this.comment = comment;
        if (endPos != null) this.endPos = endPos;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "doc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup }) }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit }) }, optional : false }, { name : "comment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup }) }, optional : false }, { name : "endPos", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }])));
    public function __copy__() {
        return new ImportSpec(doc, name, path, comment, endPos);
    }
}

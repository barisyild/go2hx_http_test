package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_declstmt_static_extension.DeclStmt_static_extension) @:using(stdgo._internal.go.ast.Ast_declstmt_static_extension.DeclStmt_static_extension) class DeclStmt {
    public var decl : stdgo._internal.go.ast.Ast_decl.Decl = (null : stdgo._internal.go.ast.Ast_decl.Decl);
    public function new(?decl:stdgo._internal.go.ast.Ast_decl.Decl) {
        if (decl != null) this.decl = decl;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "decl", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_decldotdecl.__type__stdgodot_internaldotgodotastdotAst_decldotDecl }, optional : false }])));
    public function __copy__() {
        return new DeclStmt(decl);
    }
}

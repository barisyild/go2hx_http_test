package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_labeledstmt_static_extension.LabeledStmt_static_extension) @:using(stdgo._internal.go.ast.Ast_labeledstmt_static_extension.LabeledStmt_static_extension) class LabeledStmt {
    public var label : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public var colon : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var stmt : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public function new(?label:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, ?colon:stdgo._internal.go.token.Token_pos.Pos, ?stmt:stdgo._internal.go.ast.Ast_stmt.Stmt) {
        if (label != null) this.label = label;
        if (colon != null) this.colon = colon;
        if (stmt != null) this.stmt = stmt;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "label", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }) }, optional : false }, { name : "colon", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "stmt", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_stmtdotstmt.__type__stdgodot_internaldotgodotastdotAst_stmtdotStmt }, optional : false }])));
    public function __copy__() {
        return new LabeledStmt(label, colon, stmt);
    }
}

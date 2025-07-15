package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_typeswitchstmt_static_extension.TypeSwitchStmt_static_extension) @:using(stdgo._internal.go.ast.Ast_typeswitchstmt_static_extension.TypeSwitchStmt_static_extension) class TypeSwitchStmt {
    public var switch_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var init : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public var assign : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
    public function new(?switch_:stdgo._internal.go.token.Token_pos.Pos, ?init:stdgo._internal.go.ast.Ast_stmt.Stmt, ?assign:stdgo._internal.go.ast.Ast_stmt.Stmt, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) {
        if (switch_ != null) this.switch_ = switch_;
        if (init != null) this.init = init;
        if (assign != null) this.assign = assign;
        if (body != null) this.body = body;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "switch_", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "init", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_stmtdotstmt.__type__stdgodot_internaldotgodotastdotAst_stmtdotStmt }, optional : false }, { name : "assign", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_stmtdotstmt.__type__stdgodot_internaldotgodotastdotAst_stmtdotStmt }, optional : false }, { name : "body", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_blockstmtdotblockstmt.__type__stdgodot_internaldotgodotastdotAst_blockstmtdotBlockStmt }) }, optional : false }])));
    public function __copy__() {
        return new TypeSwitchStmt(switch_, init, assign, body);
    }
}

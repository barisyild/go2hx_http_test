package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_compositelit_static_extension.CompositeLit_static_extension) @:using(stdgo._internal.go.ast.Ast_compositelit_static_extension.CompositeLit_static_extension) class CompositeLit {
    public var type : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var lbrace : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var elts : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    public var rbrace : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var incomplete : Bool = false;
    public function new(?type:stdgo._internal.go.ast.Ast_expr.Expr, ?lbrace:stdgo._internal.go.token.Token_pos.Pos, ?elts:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, ?rbrace:stdgo._internal.go.token.Token_pos.Pos, ?incomplete:Bool) {
        if (type != null) this.type = type;
        if (lbrace != null) this.lbrace = lbrace;
        if (elts != null) this.elts = elts;
        if (rbrace != null) this.rbrace = rbrace;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr }, optional : false }, { name : "lbrace", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "elts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr }) }, optional : false }, { name : "rbrace", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "incomplete", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new CompositeLit(type, lbrace, elts, rbrace, incomplete);
    }
}

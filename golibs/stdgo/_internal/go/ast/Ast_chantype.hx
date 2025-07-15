package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_chantype_static_extension.ChanType_static_extension) @:using(stdgo._internal.go.ast.Ast_chantype_static_extension.ChanType_static_extension) class ChanType {
    public var begin : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var arrow : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var dir : stdgo._internal.go.ast.Ast_chandir.ChanDir = ((0 : stdgo.GoInt) : stdgo._internal.go.ast.Ast_chandir.ChanDir);
    public var value : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?begin:stdgo._internal.go.token.Token_pos.Pos, ?arrow:stdgo._internal.go.token.Token_pos.Pos, ?dir:stdgo._internal.go.ast.Ast_chandir.ChanDir, ?value:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (begin != null) this.begin = begin;
        if (arrow != null) this.arrow = arrow;
        if (dir != null) this.dir = dir;
        if (value != null) this.value = value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "begin", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "arrow", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "dir", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_chandirdotchandir.__type__stdgodot_internaldotgodotastdotAst_chandirdotChanDir }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr }, optional : false }])));
    public function __copy__() {
        return new ChanType(begin, arrow, dir, value);
    }
}

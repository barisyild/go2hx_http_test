package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_deferstmt_static_extension.DeferStmt_static_extension) @:using(stdgo._internal.go.ast.Ast_deferstmt_static_extension.DeferStmt_static_extension) class DeferStmt {
    public var defer : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var call : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
    public function new(?defer:stdgo._internal.go.token.Token_pos.Pos, ?call:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) {
        if (defer != null) this.defer = defer;
        if (call != null) this.call = call;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "defer", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "call", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_callexprdotcallexpr.__type__stdgodot_internaldotgodotastdotAst_callexprdotCallExpr }) }, optional : false }])));
    public function __copy__() {
        return new DeferStmt(defer, call);
    }
}

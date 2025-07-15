package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_comment_static_extension.Comment_static_extension) @:using(stdgo._internal.go.ast.Ast_comment_static_extension.Comment_static_extension) class Comment {
    public var slash : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var text : stdgo.GoString = "";
    public function new(?slash:stdgo._internal.go.token.Token_pos.Pos, ?text:stdgo.GoString) {
        if (slash != null) this.slash = slash;
        if (text != null) this.text = text;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "slash", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos }, optional : false }, { name : "text", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new Comment(slash, text);
    }
}

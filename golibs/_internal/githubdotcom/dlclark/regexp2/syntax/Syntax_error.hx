package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_error_static_extension.Error_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_error_static_extension.Error_static_extension) class Error {
    public var code : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode = (("" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode);
    public var expr : stdgo.GoString = "";
    public var args : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?code:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode, ?expr:stdgo.GoString, ?args:stdgo.Slice<stdgo.AnyInterface>) {
        if (code != null) this.code = code;
        if (expr != null) this.expr = expr;
        if (args != null) this.args = args;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "code", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_errorcodedoterrorcode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_errorcodedotErrorCode }, optional : false }, { name : "expr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "args", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }])));
    public function __copy__() {
        return new Error(code, expr, args);
    }
}

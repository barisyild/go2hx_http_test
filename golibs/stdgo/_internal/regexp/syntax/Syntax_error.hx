package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_error_static_extension.Error_static_extension) @:using(stdgo._internal.regexp.syntax.Syntax_error_static_extension.Error_static_extension) class Error {
    public var code : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode = (("" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode);
    public var expr : stdgo.GoString = "";
    public function new(?code:stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode, ?expr:stdgo.GoString) {
        if (code != null) this.code = code;
        if (expr != null) this.expr = expr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "code", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode }, optional : false }, { name : "expr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new Error(code, expr);
    }
}

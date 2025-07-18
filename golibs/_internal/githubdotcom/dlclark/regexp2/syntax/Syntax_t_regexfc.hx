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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc_static_extension.T_regexFc_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc_static_extension.T_regexFc_static_extension) class T_regexFc {
    public var _cc : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet);
    public var _nullable : Bool = false;
    public var _caseInsensitive : Bool = false;
    public function new(?_cc:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet, ?_nullable:Bool, ?_caseInsensitive:Bool) {
        if (_cc != null) this._cc = _cc;
        if (_nullable != null) this._nullable = _nullable;
        if (_caseInsensitive != null) this._caseInsensitive = _caseInsensitive;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_cc", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_charsetdotcharset.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_charsetdotCharSet }, optional : false }, { name : "_nullable", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_caseInsensitive", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_regexFc(_cc, _nullable, _caseInsensitive);
    }
}

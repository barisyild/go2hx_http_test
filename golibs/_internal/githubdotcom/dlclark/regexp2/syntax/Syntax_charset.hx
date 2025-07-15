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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset_static_extension.CharSet_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset_static_extension.CharSet_static_extension) class CharSet {
    public var _ranges : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange> = (null : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
    public var _categories : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category> = (null : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>);
    public var _sub : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
    public var _negate : Bool = false;
    public var _anything : Bool = false;
    public function new(?_ranges:stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>, ?_categories:stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>, ?_sub:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, ?_negate:Bool, ?_anything:Bool) {
        if (_ranges != null) this._ranges = _ranges;
        if (_categories != null) this._categories = _categories;
        if (_sub != null) this._sub = _sub;
        if (_negate != null) this._negate = _negate;
        if (_anything != null) this._anything = _anything;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_ranges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_singlerangedott_singlerange.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_singlerangedotT_singleRange }) }, optional : false }, { name : "_categories", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_categorydott_category.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_categorydotT_category }) }, optional : false }, { name : "_sub", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_charsetdotcharset.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_charsetdotCharSet }) }, optional : false }, { name : "_negate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_anything", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new CharSet(_ranges, _categories, _sub, _negate, _anything);
    }
}

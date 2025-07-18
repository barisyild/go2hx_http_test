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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser_static_extension.T_parser_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser_static_extension.T_parser_static_extension) class T_parser {
    public var _stack : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
    public var _group : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
    public var _alternation : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
    public var _concatenation : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
    public var _unit : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
    public var _patternRaw : stdgo.GoString = "";
    public var _pattern : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _currentPos : stdgo.GoInt = 0;
    public var _specialCase : stdgo.Ref<stdgo._internal.unicode.Unicode_specialcase.SpecialCase> = (null : stdgo.Ref<stdgo._internal.unicode.Unicode_specialcase.SpecialCase>);
    public var _autocap : stdgo.GoInt = 0;
    public var _capcount : stdgo.GoInt = 0;
    public var _captop : stdgo.GoInt = 0;
    public var _capsize : stdgo.GoInt = 0;
    public var _caps : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var _capnames : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var _capnumlist : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _capnamelist : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _options : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
    public var _optionsStack : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions> = (null : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions>);
    public var _ignoreNextParen : Bool = false;
    public function new(?_stack:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, ?_group:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, ?_alternation:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, ?_concatenation:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, ?_unit:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, ?_patternRaw:stdgo.GoString, ?_pattern:stdgo.Slice<stdgo.GoInt32>, ?_currentPos:stdgo.GoInt, ?_specialCase:stdgo.Ref<stdgo._internal.unicode.Unicode_specialcase.SpecialCase>, ?_autocap:stdgo.GoInt, ?_capcount:stdgo.GoInt, ?_captop:stdgo.GoInt, ?_capsize:stdgo.GoInt, ?_caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_capnames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_capnumlist:stdgo.Slice<stdgo.GoInt>, ?_capnamelist:stdgo.Slice<stdgo.GoString>, ?_options:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions, ?_optionsStack:stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions>, ?_ignoreNextParen:Bool) {
        if (_stack != null) this._stack = _stack;
        if (_group != null) this._group = _group;
        if (_alternation != null) this._alternation = _alternation;
        if (_concatenation != null) this._concatenation = _concatenation;
        if (_unit != null) this._unit = _unit;
        if (_patternRaw != null) this._patternRaw = _patternRaw;
        if (_pattern != null) this._pattern = _pattern;
        if (_currentPos != null) this._currentPos = _currentPos;
        if (_specialCase != null) this._specialCase = _specialCase;
        if (_autocap != null) this._autocap = _autocap;
        if (_capcount != null) this._capcount = _capcount;
        if (_captop != null) this._captop = _captop;
        if (_capsize != null) this._capsize = _capsize;
        if (_caps != null) this._caps = _caps;
        if (_capnames != null) this._capnames = _capnames;
        if (_capnumlist != null) this._capnumlist = _capnumlist;
        if (_capnamelist != null) this._capnamelist = _capnamelist;
        if (_options != null) this._options = _options;
        if (_optionsStack != null) this._optionsStack = _optionsStack;
        if (_ignoreNextParen != null) this._ignoreNextParen = _ignoreNextParen;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_stack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_regexnodedott_regexnode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_regexnodedotT_regexNode }) }, optional : false },
{ name : "_group", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_regexnodedott_regexnode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_regexnodedotT_regexNode }) }, optional : false },
{ name : "_alternation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_regexnodedott_regexnode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_regexnodedotT_regexNode }) }, optional : false },
{ name : "_concatenation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_regexnodedott_regexnode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_regexnodedotT_regexNode }) }, optional : false },
{ name : "_unit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_regexnodedott_regexnode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_regexnodedotT_regexNode }) }, optional : false },
{ name : "_patternRaw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_pattern", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false },
{ name : "_currentPos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_specialCase", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotunicodedotunicode_specialcasedotspecialcase.__type__stdgodot_internaldotunicodedotUnicode_specialcasedotSpecialCase }) }, optional : false },
{ name : "_autocap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_capcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_captop", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_capsize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_caps", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false },
{ name : "_capnames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false },
{ name : "_capnumlist", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false },
{ name : "_capnamelist", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "_options", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_regexoptionsdotregexoptions.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_regexoptionsdotRegexOptions }, optional : false },
{ name : "_optionsStack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_regexoptionsdotregexoptions.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_regexoptionsdotRegexOptions }) }, optional : false },
{ name : "_ignoreNextParen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_parser(
_stack,
_group,
_alternation,
_concatenation,
_unit,
_patternRaw,
_pattern,
_currentPos,
_specialCase,
_autocap,
_capcount,
_captop,
_capsize,
_caps,
_capnames,
_capnumlist,
_capnamelist,
_options,
_optionsStack,
_ignoreNextParen);
    }
}

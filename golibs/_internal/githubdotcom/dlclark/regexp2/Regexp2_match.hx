package _internal.githubdotcom.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.log.Log;
import _internal.githubdotcom.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension) class Match {
    @:embedded
    public var group : _internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group = ({} : _internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group);
    public var _regex : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>);
    public var _otherGroups : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group> = (null : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group>);
    public var _textpos : stdgo.GoInt = 0;
    public var _textstart : stdgo.GoInt = 0;
    public var _capcount : stdgo.GoInt = 0;
    public var _caps : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _sparseCaps : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var _matches : stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
    public var _matchcount : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _balancing : Bool = false;
    public function new(?group:_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group, ?_regex:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, ?_otherGroups:stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group>, ?_textpos:stdgo.GoInt, ?_textstart:stdgo.GoInt, ?_capcount:stdgo.GoInt, ?_caps:stdgo.Slice<stdgo.GoInt>, ?_sparseCaps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_matches:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, ?_matchcount:stdgo.Slice<stdgo.GoInt>, ?_balancing:Bool) {
        if (group != null) this.group = group;
        if (_regex != null) this._regex = _regex;
        if (_otherGroups != null) this._otherGroups = _otherGroups;
        if (_textpos != null) this._textpos = _textpos;
        if (_textstart != null) this._textstart = _textstart;
        if (_capcount != null) this._capcount = _capcount;
        if (_caps != null) this._caps = _caps;
        if (_sparseCaps != null) this._sparseCaps = _sparseCaps;
        if (_matches != null) this._matches = _matches;
        if (_matchcount != null) this._matchcount = _matchcount;
        if (_balancing != null) this._balancing = _balancing;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "group", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_groupdotgroup.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_groupdotGroup }, optional : false },
{ name : "_regex", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_regexpdotregexp.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_regexpdotRegexp }) }, optional : false },
{ name : "_otherGroups", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_groupdotgroup.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_groupdotGroup }) }, optional : false },
{ name : "_textpos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_textstart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_capcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_caps", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false },
{ name : "_sparseCaps", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false },
{ name : "_matches", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }) }, optional : false },
{ name : "_matchcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false },
{ name : "_balancing", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public var runes(get, never) : () -> stdgo.Slice<stdgo.GoInt32>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_runes():() -> stdgo.Slice<stdgo.GoInt32> return @:check32 this.group.runes;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this.group.string;
    public function __copy__() {
        return new Match(
group,
_regex,
_otherGroups,
_textpos,
_textstart,
_capcount,
_caps,
_sparseCaps,
_matches,
_matchcount,
_balancing);
    }
}

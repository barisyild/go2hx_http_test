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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension) class Regexp {
    public var matchTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _pattern : stdgo.GoString = "";
    public var _options : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
    public var _caps : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var _capnames : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var _capslist : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _capsize : stdgo.GoInt = 0;
    public var _code : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code>);
    public var _muRun : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex> = (null : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
    public var _runner : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>> = (null : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>>);
    public function new(?matchTimeout:stdgo._internal.time.Time_duration.Duration, ?_pattern:stdgo.GoString, ?_options:_internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions, ?_caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_capnames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_capslist:stdgo.Slice<stdgo.GoString>, ?_capsize:stdgo.GoInt, ?_code:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code>, ?_muRun:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>, ?_runner:stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner.T_runner>>) {
        if (matchTimeout != null) this.matchTimeout = matchTimeout;
        if (_pattern != null) this._pattern = _pattern;
        if (_options != null) this._options = _options;
        if (_caps != null) this._caps = _caps;
        if (_capnames != null) this._capnames = _capnames;
        if (_capslist != null) this._capslist = _capslist;
        if (_capsize != null) this._capsize = _capsize;
        if (_code != null) this._code = _code;
        if (_muRun != null) this._muRun = _muRun;
        if (_runner != null) this._runner = _runner;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "matchTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false }, { name : "_pattern", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_options", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_regexoptionsdotregexoptions.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_regexoptionsdotRegexOptions }, optional : false }, { name : "_caps", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_capnames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_capslist", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }, { name : "_capsize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_code", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_codedotcode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_codedotCode }) }, optional : false }, { name : "_muRun", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }) }, optional : false }, { name : "_runner", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_runnerdott_runner.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_runnerdotT_runner }) }) }, optional : false }])));
    public function __copy__() {
        return new Regexp(matchTimeout, _pattern, _options, _caps, _capnames, _capslist, _capsize, _code, _muRun, _runner);
    }
}

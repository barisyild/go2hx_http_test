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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension) class T_runner {
    public var _re : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>);
    public var _code : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code>);
    public var _runtextstart : stdgo.GoInt = 0;
    public var _runtext : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _runtextpos : stdgo.GoInt = 0;
    public var _runtextend : stdgo.GoInt = 0;
    public var _runtrack : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _runtrackpos : stdgo.GoInt = 0;
    public var _runstack : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _runstackpos : stdgo.GoInt = 0;
    public var _runcrawl : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _runcrawlpos : stdgo.GoInt = 0;
    public var _runtrackcount : stdgo.GoInt = 0;
    public var _runmatch : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>);
    public var _ignoreTimeout : Bool = false;
    public var _timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _deadline : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime = ((0 : stdgo.GoInt64) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
    public var _operator : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp = ((0 : stdgo.GoInt) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp);
    public var _codepos : stdgo.GoInt = 0;
    public var _rightToLeft : Bool = false;
    public var _caseInsensitive : Bool = false;
    public function new(?_re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, ?_code:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code>, ?_runtextstart:stdgo.GoInt, ?_runtext:stdgo.Slice<stdgo.GoInt32>, ?_runtextpos:stdgo.GoInt, ?_runtextend:stdgo.GoInt, ?_runtrack:stdgo.Slice<stdgo.GoInt>, ?_runtrackpos:stdgo.GoInt, ?_runstack:stdgo.Slice<stdgo.GoInt>, ?_runstackpos:stdgo.GoInt, ?_runcrawl:stdgo.Slice<stdgo.GoInt>, ?_runcrawlpos:stdgo.GoInt, ?_runtrackcount:stdgo.GoInt, ?_runmatch:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, ?_ignoreTimeout:Bool, ?_timeout:stdgo._internal.time.Time_duration.Duration, ?_deadline:_internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime, ?_operator:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp, ?_codepos:stdgo.GoInt, ?_rightToLeft:Bool, ?_caseInsensitive:Bool) {
        if (_re != null) this._re = _re;
        if (_code != null) this._code = _code;
        if (_runtextstart != null) this._runtextstart = _runtextstart;
        if (_runtext != null) this._runtext = _runtext;
        if (_runtextpos != null) this._runtextpos = _runtextpos;
        if (_runtextend != null) this._runtextend = _runtextend;
        if (_runtrack != null) this._runtrack = _runtrack;
        if (_runtrackpos != null) this._runtrackpos = _runtrackpos;
        if (_runstack != null) this._runstack = _runstack;
        if (_runstackpos != null) this._runstackpos = _runstackpos;
        if (_runcrawl != null) this._runcrawl = _runcrawl;
        if (_runcrawlpos != null) this._runcrawlpos = _runcrawlpos;
        if (_runtrackcount != null) this._runtrackcount = _runtrackcount;
        if (_runmatch != null) this._runmatch = _runmatch;
        if (_ignoreTimeout != null) this._ignoreTimeout = _ignoreTimeout;
        if (_timeout != null) this._timeout = _timeout;
        if (_deadline != null) this._deadline = _deadline;
        if (_operator != null) this._operator = _operator;
        if (_codepos != null) this._codepos = _codepos;
        if (_rightToLeft != null) this._rightToLeft = _rightToLeft;
        if (_caseInsensitive != null) this._caseInsensitive = _caseInsensitive;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_re", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_regexpdotregexp.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_regexpdotRegexp }) }, optional : false },
{ name : "_code", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_codedotcode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_codedotCode }) }, optional : false },
{ name : "_runtextstart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_runtext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false },
{ name : "_runtextpos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_runtextend", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_runtrack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false },
{ name : "_runtrackpos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_runstack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false },
{ name : "_runstackpos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_runcrawl", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false },
{ name : "_runcrawlpos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_runtrackcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_runmatch", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_matchdotmatch.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_matchdotMatch }) }, optional : false },
{ name : "_ignoreTimeout", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_timeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "_deadline", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime }, optional : false },
{ name : "_operator", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_instopdotinstop.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_instopdotInstOp }, optional : false },
{ name : "_codepos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_rightToLeft", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_caseInsensitive", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_runner(
_re,
_code,
_runtextstart,
_runtext,
_runtextpos,
_runtextend,
_runtrack,
_runtrackpos,
_runstack,
_runstackpos,
_runcrawl,
_runcrawlpos,
_runtrackcount,
_runmatch,
_ignoreTimeout,
_timeout,
_deadline,
_operator,
_codepos,
_rightToLeft,
_caseInsensitive);
    }
}

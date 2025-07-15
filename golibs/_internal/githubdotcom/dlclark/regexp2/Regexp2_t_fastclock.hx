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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_t_fastclock_static_extension.T_fastclock_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_t_fastclock_static_extension.T_fastclock_static_extension) class T_fastclock {
    public var _current : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime = ({} : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime);
    public var _clockEnd : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime = ({} : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _start : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _running : Bool = false;
    public function new(?_current:_internal.githubdotcom.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime, ?_clockEnd:_internal.githubdotcom.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_start:stdgo._internal.time.Time_time.Time, ?_running:Bool) {
        if (_current != null) this._current = _current;
        if (_clockEnd != null) this._clockEnd = _clockEnd;
        if (_mu != null) this._mu = _mu;
        if (_start != null) this._start = _start;
        if (_running != null) this._running = _running;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_current", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_atomictimedott_atomictime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_atomictimedotT_atomicTime }, optional : false }, { name : "_clockEnd", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_atomictimedott_atomictime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_atomictimedotT_atomicTime }, optional : false }, { name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_start", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }, { name : "_running", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_fastclock(_current, _clockEnd, _mu, _start, _running);
    }
}

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
function _makeDeadline(_d:stdgo._internal.time.Time_duration.Duration):_internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime {
        var _end = @:assignType (_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._current._read() + _internal.githubdotcom.dlclark.regexp2.Regexp2__durationtoticks._durationToTicks((_d + _internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L52"
        if ((_end > _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._clockEnd._read() : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L56"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.lock();
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L57"
            if ((!_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._running && !_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._start.isZero() : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L59"
                _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._current._write(_internal.githubdotcom.dlclark.regexp2.Regexp2__durationtoticks._durationToTicks(stdgo._internal.time.Time_since.since(_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._start?.__copy__())));
                _end = (_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._current._read() + _internal.githubdotcom.dlclark.regexp2.Regexp2__durationtoticks._durationToTicks((_d + _internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L63"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.unlock();
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L64"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__extendclock._extendClock(_end);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L67"
        return _end;
    }

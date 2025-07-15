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
function _stopClock():Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L94"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.lock();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L95"
        if (_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._running) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L96"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._clockEnd._write((0i64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L98"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.unlock();
        var _isRunning = @:assignType (true : Bool);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L103"
        while (_isRunning) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L104"
            stdgo._internal.time.Time_sleep.sleep((_internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod / (2i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L105"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.lock();
            _isRunning = _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._running;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L107"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.unlock();
        };
    }

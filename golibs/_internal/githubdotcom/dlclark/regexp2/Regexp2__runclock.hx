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
function _runClock():Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L123"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.lock();
            {
                final __f__ = _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L126"
            while ((_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._current._read() <= _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._clockEnd._read() : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L128"
                _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.unlock();
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L129"
                stdgo._internal.time.Time_sleep.sleep(_internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L130"
                _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.lock();
                var _newTime = @:assignType (_internal.githubdotcom.dlclark.regexp2.Regexp2__durationtoticks._durationToTicks(stdgo._internal.time.Time_since.since(_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._start?.__copy__())) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L133"
                _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._current._write(_newTime);
            };
            _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._running = false;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }

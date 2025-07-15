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
function _extendClock(_end:_internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L72"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.lock();
            {
                final __f__ = _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L75"
            if (_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._start.isZero()) {
                _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._start = stdgo._internal.time.Time_now.now()?.__copy__();
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L80"
            {
                var _shutdown = @:assignType (_end + _internal.githubdotcom.dlclark.regexp2.Regexp2__durationtoticks._durationToTicks((1000000000i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
                if ((_shutdown > _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._clockEnd._read() : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L81"
                    _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._clockEnd._write(_shutdown);
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L85"
            if (!_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._running) {
                _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._running = true;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L87"
                {
                    {};
                    stdgo.Go.routine(() -> _internal.githubdotcom.dlclark.regexp2.Regexp2__runclock._runClock());
                };
            };
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

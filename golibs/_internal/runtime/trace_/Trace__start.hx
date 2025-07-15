package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function start(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/runtime/trace/trace.go#L122"
            _internal.runtime.trace_.Trace___tracing._tracing.lock();
            {
                final __f__ = _internal.runtime.trace_.Trace___tracing._tracing.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/trace/trace.go#L125"
            {
                var _err = @:assignType (stdgo._internal.runtime.Runtime_starttrace.startTrace() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/trace/trace.go#L126"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/trace/trace.go#L128"
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/trace/trace.go#L129"
                    while (true) {
                        var _data = stdgo._internal.runtime.Runtime_readtrace.readTrace();
                        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/trace.go#L131"
                        if (_data == null) {
                            //"file:///Users/o/.go/go1.21.3/src/runtime/trace/trace.go#L132"
                            break;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/trace.go#L134"
                        _w.write(_data);
                    };
                };
                a();
            }));
            //"file:///Users/o/.go/go1.21.3/src/runtime/trace/trace.go#L137"
            _internal.runtime.trace_.Trace___tracing._tracing._enabled.store(true);
            //"file:///Users/o/.go/go1.21.3/src/runtime/trace/trace.go#L138"
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }

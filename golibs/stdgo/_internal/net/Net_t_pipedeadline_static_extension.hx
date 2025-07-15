package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.net.Net.T_pipeDeadline_asInterface) class T_pipeDeadline_static_extension {
    @:keep
    @:tdfield
    static public function _wait( _d:stdgo.Ref<stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline>):stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18> {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline> = _d;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L68"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L70"
            {
                final __ret__:stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18> = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel;
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
                return (null : stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>);
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
                return (null : stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _set( _d:stdgo.Ref<stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline>, _t:stdgo._internal.time.Time_time.Time):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline> = _d;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L32"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L35"
            if ((({
                final value = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timer;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && !(@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timer.stop() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L36"
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel.__get__();
            };
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timer = null;
            var _closed = @:assignType (stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L42"
            if (_t.isZero()) {
                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L43"
                if (_closed) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel = (new stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>(0, () -> ({  } : stdgo._internal.net.Net_t__struct_18.T__struct_18)) : stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L46"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L50"
            {
                var _dur = @:assignType (stdgo._internal.time.Time_until.until(_t?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                if ((_dur > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L51"
                    if (_closed) {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel = (new stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>(0, () -> ({  } : stdgo._internal.net.Net_t__struct_18.T__struct_18)) : stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>);
                    };
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timer = stdgo._internal.time.Time_afterfunc.afterFunc(_dur, function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L55"
                        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel != null) (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel.__close__();
                    });
                    //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L57"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L61"
            if (!_closed) {
                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L62"
                if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel != null) (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel.__close__();
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
}

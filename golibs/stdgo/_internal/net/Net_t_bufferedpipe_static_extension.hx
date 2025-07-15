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
@:keep @:allow(stdgo._internal.net.Net.T_bufferedPipe_asInterface) class T_bufferedPipe_static_extension {
    @:keep
    @:tdfield
    static public function setWriteDeadline( _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>, _t:stdgo._internal.time.Time_time.Time):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L341"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wDeadline = _t?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L345"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wCond.broadcast();
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
    @:keep
    @:tdfield
    static public function setReadDeadline( _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>, _t:stdgo._internal.time.Time_time.Time):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L333"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rDeadline = _t?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L337"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rCond.broadcast();
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
    @:keep
    @:tdfield
    static public function close( _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L324"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L328"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rCond.broadcast();
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L329"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wCond.broadcast();
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
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L298"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L301"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L302"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L303"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(107) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L305"
                if (!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wDeadline.isZero()) {
                    var _d = @:assignType (stdgo._internal.time.Time_until.until((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wDeadline?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L307"
                    if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L308"
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L310"
                    stdgo._internal.time.Time_afterfunc.afterFunc(_d, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wCond.broadcast);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L312"
                if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) <= (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._softLimit : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L313"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L315"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wCond.wait_();
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__append__(...(_b : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L319"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rCond.broadcast();
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L320"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_b.length), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function read( _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_bufferedpipe.T_bufferedPipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L271"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L274"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L275"
                if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length == (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L276"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L278"
                if (!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rDeadline.isZero()) {
                    var _d = @:assignType (stdgo._internal.time.Time_until.until((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rDeadline?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L280"
                    if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L281"
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L283"
                    stdgo._internal.time.Time_afterfunc.afterFunc(_d, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rCond.broadcast);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L285"
                if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L286"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L288"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rCond.wait_();
            };
            var _n = @:assignType (_b.__copyTo__((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf) : stdgo.GoInt);
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L293"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wCond.broadcast();
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L294"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
}

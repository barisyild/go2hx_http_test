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
@:keep @:allow(stdgo._internal.net.Net.T_nsswitchConfig_asInterface) class T_nsswitchConfig_static_extension {
    @:keep
    @:tdfield
    static public function _releaseSema( _conf:stdgo.Ref<stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig>):Void {
        @:recv var _conf:stdgo.Ref<stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig> = _conf;
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L92"
        (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch.__get__();
    }
    @:keep
    @:tdfield
    static public function _tryAcquireSema( _conf:stdgo.Ref<stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig>):Bool {
        @:recv var _conf:stdgo.Ref<stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig> = _conf;
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L83"
        {
            {
                var __select__ = true;
                var __c__0 = (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch;
                while (__select__) {
                    if ((@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch != null && __c__0.__isSend__(true)) {
                        __select__ = false;
                        {
                            __c__0.__send__(({  } : stdgo._internal.net.Net_t__struct_18.T__struct_18));
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L85"
                                return true;
                            };
                        };
                    } else {
                        __select__ = false;
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L87"
                            return false;
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
            return false;
        };
    }
    @:keep
    @:tdfield
    static public function _acquireSema( _conf:stdgo.Ref<stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig>):Void {
        @:recv var _conf:stdgo.Ref<stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig> = _conf;
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L79"
        (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch.__send__(({  } : stdgo._internal.net.Net_t__struct_18.T__struct_18));
    }
    @:keep
    @:tdfield
    static public function _tryUpdate( _conf:stdgo.Ref<stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig>):Void {
        @:recv var _conf:stdgo.Ref<stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig> = _conf;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L50"
            (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initOnce.do_(_conf._init);
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L53"
            if (!_conf._tryAcquireSema()) {
                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L54"
                return;
            };
            {
                final __f__ = _conf._releaseSema;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _now = @:assignType (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L59"
            if ((@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastChecked.after(_now.add((-5000000000i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L60"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastChecked = _now?.__copy__();
            var _mtime:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L65"
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(("/etc/nsswitch.conf" : stdgo.GoString)), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _mtime = _fi.modTime()?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L68"
            if (_mtime.equal((@:checkr (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nssConf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mtime?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L69"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _nssConf = stdgo._internal.net.Net__parsenssconffile._parseNSSConfFile(("/etc/nsswitch.conf" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L73"
            (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nssConf = _nssConf;
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L75"
            (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
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
    static public function _init( _conf:stdgo.Ref<stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig>):Void {
        @:recv var _conf:stdgo.Ref<stdgo._internal.net.Net_t_nsswitchconfig.T_nsswitchConfig> = _conf;
        (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nssConf = stdgo._internal.net.Net__parsenssconffile._parseNSSConfFile(("/etc/nsswitch.conf" : stdgo.GoString));
        (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastChecked = stdgo._internal.time.Time_now.now()?.__copy__();
        (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch = (new stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>((1 : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.net.Net_t__struct_18.T__struct_18)) : stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>);
    }
}

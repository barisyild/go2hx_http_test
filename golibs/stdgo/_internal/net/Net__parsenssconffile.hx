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
function _parseNSSConfFile(_file:stdgo.GoString):stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.net.Net__open._open(_file?.__copy__()), _f:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L151"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L152"
                return (stdgo.Go.setRef(({ _err : _err } : stdgo._internal.net.Net_t_nssconf.T_nssConf), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_nssconfdott_nssconf.__type__stdgodot_internaldotnetdotNet_t_nssconfdotT_nssConf })) : stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf>);
            };
            {
                final __f__ = _f._close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = _f._stat(), _mtime:stdgo._internal.time.Time_time.Time = __tmp__._0, __3:stdgo.GoInt64 = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L156"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L157"
                {
                    final __ret__:stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf> = (stdgo.Go.setRef(({ _err : _err } : stdgo._internal.net.Net_t_nssconf.T_nssConf), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_nssconfdott_nssconf.__type__stdgodot_internaldotnetdotNet_t_nssconfdotT_nssConf })) : stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf>);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _conf = stdgo._internal.net.Net__parsenssconf._parseNSSConf(_f);
            (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mtime = _mtime?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L162"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _conf;
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
                return (null : stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf>);
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
                return (null : stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf>);
            };
        };
    }

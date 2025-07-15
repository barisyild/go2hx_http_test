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
function _lookupStaticHost(_host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.GoString; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L130"
            stdgo._internal.net.Net__hosts._hosts.lock();
            {
                final __f__ = stdgo._internal.net.Net__hosts._hosts.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L132"
            stdgo._internal.net.Net__readhosts._readHosts();
            //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L133"
            if ((stdgo._internal.net.Net__hosts._hosts._byName.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L134"
                if (stdgo._internal.net.Net__hasuppercase._hasUpperCase(_host?.__copy__())) {
                    var _lowerHost = (_host : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L136"
                    stdgo._internal.net.Net__lowerasciibytes._lowerASCIIBytes(_lowerHost);
                    _host = (_lowerHost : stdgo.GoString)?.__copy__();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L139"
                {
                    var __tmp__ = (stdgo._internal.net.Net__hosts._hosts._byName != null && stdgo._internal.net.Net__hosts._hosts._byName.__exists__(stdgo._internal.net.Net__absdomainname._absDomainName(_host?.__copy__())?.__copy__()) ? { _0 : stdgo._internal.net.Net__hosts._hosts._byName[stdgo._internal.net.Net__absdomainname._absDomainName(_host?.__copy__())?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.Net_t_byname.T_byName), _1 : false }), _byName:stdgo._internal.net.Net_t_byname.T_byName = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        var _ipsCp = (new stdgo.Slice<stdgo.GoString>((_byName._addrs.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                        //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L141"
                        _ipsCp.__copyTo__(_byName._addrs);
                        //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L142"
                        {
                            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.GoString; } = { _0 : _ipsCp, _1 : _byName._canonicalName?.__copy__() };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/hosts.go#L145"
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.GoString; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : ("" : stdgo.GoString) };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : ("" : stdgo.GoString) };
            };
        };
    }

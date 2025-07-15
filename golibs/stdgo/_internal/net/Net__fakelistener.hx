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
function _fakelistener(_fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>, _laddr:stdgo._internal.net.Net_t_sockaddr.T_sockaddr):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L107"
            {
                final __type__ = _laddr;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_sockaddrdott_sockaddr.__type__stdgodot_internaldotnetdotNet_t_sockaddrdotT_sockaddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr }))) {
                    var _l:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : __type__.__underlying__().value);
                    _laddr = stdgo.Go.asInterface(stdgo._internal.net.Net__faketcpaddr._fakeTCPAddr(_l), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr }));
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_sockaddrdott_sockaddr.__type__stdgodot_internaldotnetdotNet_t_sockaddrdotT_sockaddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr }))) {
                    var _l:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : __type__.__underlying__().value);
                    _laddr = stdgo.Go.asInterface(stdgo._internal.net.Net__fakeudpaddr._fakeUDPAddr(_l), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr }));
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_sockaddrdott_sockaddr.__type__stdgodot_internaldotnetdotNet_t_sockaddrdotT_sockaddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr }))) {
                    var _l:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L113"
                    if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L114"
                        return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(2) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
                    };
                    _laddr = stdgo.Go.asInterface(stdgo._internal.net.Net__fakeunixaddr._fakeUnixAddr((@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sotype, _l), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr }));
                } else {
                    var _l:stdgo._internal.net.Net_t_sockaddr.T_sockaddr = __type__ == null ? (null : stdgo._internal.net.Net_t_sockaddr.T_sockaddr) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L118"
                    return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(95) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
                };
            };
            var _listener = @:assignType ({ _network : _laddr.network()?.__copy__(), _address : (_laddr.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr);
            (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fakeNetFD = (stdgo.Go.setRef(({ _listener : _listener?.__copy__(), _incoming : (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>>((1024 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>>) } : stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_fakenetfddott_fakenetfd.__type__stdgodot_internaldotnetdotNet_t_fakenetfddotT_fakeNetFD })) : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>);
            (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr = _laddr;
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L132"
            stdgo._internal.net.Net__listenersmu._listenersMu.lock();
            {
                final __f__ = stdgo._internal.net.Net__listenersmu._listenersMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L134"
            {
                var __tmp__ = (stdgo._internal.net.Net__listeners._listeners != null && stdgo._internal.net.Net__listeners._listeners.__exists__(_listener?.__copy__()) ? { _0 : stdgo._internal.net.Net__listeners._listeners[_listener?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>), _1 : false }), __3:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _exists:Bool = __tmp__._1;
                if (_exists) {
                    //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L135"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(98) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            stdgo._internal.net.Net__listeners._listeners[_listener] = _fd;
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L138"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } = { _0 : _fd, _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>), _1 : (null : stdgo.Error) };
            };
        };
    }

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
@:keep @:allow(stdgo._internal.net.Net.UnixAddr_asInterface) class UnixAddr_static_extension {
    @:keep
    @:tdfield
    static public function _toLocal( _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>, _net:stdgo.GoString):stdgo._internal.net.Net_t_sockaddr.T_sockaddr {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L98"
        return stdgo.Go.asInterface(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr }));
    }
    @:keep
    @:tdfield
    static public function _sockaddr( _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>, _family:stdgo.GoInt):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L91"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L92"
            return { _0 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L94"
        return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ name : (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__() } : stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix }))), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _family( _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):stdgo.GoInt {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L87"
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _opAddr( _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L45"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L46"
            return (null : stdgo._internal.net.Net_addr.Addr);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L48"
        return stdgo.Go.asInterface(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr }));
    }
    @:keep
    @:tdfield
    static public function _isWildcard( _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):Bool {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L41"
        return (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == (stdgo.Go.str() : stdgo.GoString)) : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L34"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L35"
            return ("<nil>" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L37"
        return (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function network( _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L30"
        return (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).net?.__copy__();
    }
}

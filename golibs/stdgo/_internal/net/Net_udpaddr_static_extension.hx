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
@:keep @:allow(stdgo._internal.net.Net.UDPAddr_asInterface) class UDPAddr_static_extension {
    @:keep
    @:tdfield
    static public function _toLocal( _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>, _net:stdgo.GoString):stdgo._internal.net.Net_t_sockaddr.T_sockaddr {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L43"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.Net_udpaddr.UDPAddr(stdgo._internal.net.Net__loopbackip._loopbackIP(_net?.__copy__()), (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port, (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone?.__copy__()) : stdgo._internal.net.Net_udpaddr.UDPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })) : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr }));
    }
    @:keep
    @:tdfield
    static public function _sockaddr( _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>, _family:stdgo.GoInt):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L36"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L37"
            return { _0 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L39"
        return stdgo._internal.net.Net__iptosockaddr._ipToSockaddr(_family, (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP, (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port, (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _family( _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):stdgo.GoInt {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L26"
        if ((({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        }) || (((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.length) <= (4 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L27"
            return (2 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L29"
        if ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.to4() != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L30"
            return (2 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L32"
        return (3 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _opAddr( _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L66"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L67"
            return (null : stdgo._internal.net.Net_addr.Addr);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L69"
        return stdgo.Go.asInterface(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr }));
    }
    @:keep
    @:tdfield
    static public function _isWildcard( _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):Bool {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L59"
        if ((({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L60"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L62"
        return (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.isUnspecified();
    }
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L48"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L49"
            return ("<nil>" : stdgo.GoString);
        };
        var _ip = @:assignType (stdgo._internal.net.Net__ipemptystring._ipEmptyString((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L52"
        if ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L53"
            return stdgo._internal.net.Net_joinhostport.joinHostPort(((_ip + ("%" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone?.__copy__() : stdgo.GoString)?.__copy__(), stdgo._internal.internal.itoa.Itoa_itoa.itoa((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port)?.__copy__())?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L55"
        return stdgo._internal.net.Net_joinhostport.joinHostPort(_ip?.__copy__(), stdgo._internal.internal.itoa.Itoa_itoa.itoa((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port)?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function network( _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L45"
        return ("udp" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function addrPort( _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):stdgo._internal.net.netip.Netip_addrport.AddrPort {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L36"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L37"
            return (new stdgo._internal.net.netip.Netip_addrport.AddrPort() : stdgo._internal.net.netip.Netip_addrport.AddrPort);
        };
        var __tmp__ = stdgo._internal.net.netip.Netip_addrfromslice.addrFromSlice((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP), _na:stdgo._internal.net.netip.Netip_addr.Addr = __tmp__._0, __3:Bool = __tmp__._1;
        _na = _na.withZone((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone?.__copy__())?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L41"
        return stdgo._internal.net.netip.Netip_addrportfrom.addrPortFrom(_na?.__copy__(), ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port : stdgo.GoUInt16))?.__copy__();
    }
}

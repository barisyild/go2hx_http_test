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
@:keep @:allow(stdgo._internal.net.Net.IPAddr_asInterface) class IPAddr_static_extension {
    @:keep
    @:tdfield
    static public function _toLocal( _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>, _net:stdgo.GoString):stdgo._internal.net.Net_t_sockaddr.T_sockaddr {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L42"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.Net_ipaddr.IPAddr(stdgo._internal.net.Net__loopbackip._loopbackIP(_net?.__copy__()), (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone?.__copy__()) : stdgo._internal.net.Net_ipaddr.IPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }));
    }
    @:keep
    @:tdfield
    static public function _sockaddr( _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>, _family:stdgo.GoInt):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L35"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L36"
            return { _0 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L38"
        return stdgo._internal.net.Net__iptosockaddr._ipToSockaddr(_family, (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP, (0 : stdgo.GoInt), (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _family( _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):stdgo.GoInt {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L25"
        if ((({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        }) || (((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.length) <= (4 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L26"
            return (2 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L28"
        if ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.to4() != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L29"
            return (2 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L31"
        return (3 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _opAddr( _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L58"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L59"
            return (null : stdgo._internal.net.Net_addr.Addr);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L61"
        return stdgo.Go.asInterface(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }));
    }
    @:keep
    @:tdfield
    static public function _isWildcard( _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):Bool {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L51"
        if ((({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L52"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L54"
        return (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.isUnspecified();
    }
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L40"
        if (({
            final value = _a;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L41"
            return ("<nil>" : stdgo.GoString);
        };
        var _ip = @:assignType (stdgo._internal.net.Net__ipemptystring._ipEmptyString((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L44"
        if ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L45"
            return ((_ip + ("%" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L47"
        return _ip?.__copy__();
    }
    @:keep
    @:tdfield
    static public function network( _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = _a;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L37"
        return ("ip" : stdgo.GoString);
    }
}

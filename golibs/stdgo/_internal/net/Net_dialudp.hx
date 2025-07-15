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
function dialUDP(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L291"
        {
            final __value__ = _network;
            if (__value__ == (("udp" : stdgo.GoString)) || __value__ == (("udp4" : stdgo.GoString)) || __value__ == (("udp6" : stdgo.GoString))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L294"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial" : stdgo.GoString), net : _network?.__copy__(), source : _laddr._opAddr(), addr : _raddr._opAddr(), err : stdgo.Go.asInterface((_network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L296"
        if (({
            final value = _raddr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L297"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial" : stdgo.GoString), net : _network?.__copy__(), source : _laddr._opAddr(), addr : (null : stdgo._internal.net.Net_addr.Addr), err : stdgo._internal.net.Net__errmissingaddress._errMissingAddress } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var _sd = (stdgo.Go.setRef(({ _network : _network?.__copy__(), _address : (_raddr.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_t_sysdialer.T_sysDialer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_sysdialerdott_sysdialer.__type__stdgodot_internaldotnetdotNet_t_sysdialerdotT_sysDialer })) : stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>);
        var __tmp__ = _sd._dialUDP(stdgo._internal.context.Context_background.background(), _laddr, _raddr), _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L301"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L302"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial" : stdgo.GoString), net : _network?.__copy__(), source : _laddr._opAddr(), addr : _raddr._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L304"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }

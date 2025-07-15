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
function listenUDP(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L317"
        {
            final __value__ = _network;
            if (__value__ == (("udp" : stdgo.GoString)) || __value__ == (("udp4" : stdgo.GoString)) || __value__ == (("udp6" : stdgo.GoString))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L320"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("listen" : stdgo.GoString), net : _network?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : _laddr._opAddr(), err : stdgo.Go.asInterface((_network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L322"
        if (({
            final value = _laddr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _laddr = (stdgo.Go.setRef((new stdgo._internal.net.Net_udpaddr.UDPAddr() : stdgo._internal.net.Net_udpaddr.UDPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })) : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>);
        };
        var _sl = (stdgo.Go.setRef(({ _network : _network?.__copy__(), _address : (_laddr.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_t_syslistener.T_sysListener), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_syslistenerdott_syslistener.__type__stdgodot_internaldotnetdotNet_t_syslistenerdotT_sysListener })) : stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>);
        var __tmp__ = _sl._listenUDP(stdgo._internal.context.Context_background.background(), _laddr), _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L327"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L328"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("listen" : stdgo.GoString), net : _network?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : _laddr._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L330"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }

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
function listenIP(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L231"
        if (({
            final value = _laddr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _laddr = (stdgo.Go.setRef((new stdgo._internal.net.Net_ipaddr.IPAddr() : stdgo._internal.net.Net_ipaddr.IPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
        };
        var _sl = (stdgo.Go.setRef(({ _network : _network?.__copy__(), _address : (_laddr.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_t_syslistener.T_sysListener), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_syslistenerdott_syslistener.__type__stdgodot_internaldotnetdotNet_t_syslistenerdotT_sysListener })) : stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>);
        var __tmp__ = _sl._listenIP(stdgo._internal.context.Context_background.background(), _laddr), _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L236"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L237"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("listen" : stdgo.GoString), net : _network?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : _laddr._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L239"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }

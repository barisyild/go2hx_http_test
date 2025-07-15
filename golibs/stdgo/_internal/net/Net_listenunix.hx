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
function listenUnix(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L318"
        {
            final __value__ = _network;
            if (__value__ == (("unix" : stdgo.GoString)) || __value__ == (("unixpacket" : stdgo.GoString))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L321"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("listen" : stdgo.GoString), net : _network?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : _laddr._opAddr(), err : stdgo.Go.asInterface((_network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L323"
        if (({
            final value = _laddr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L324"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("listen" : stdgo.GoString), net : _network?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : _laddr._opAddr(), err : stdgo._internal.net.Net__errmissingaddress._errMissingAddress } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var _sl = (stdgo.Go.setRef(({ _network : _network?.__copy__(), _address : (_laddr.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_t_syslistener.T_sysListener), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_syslistenerdott_syslistener.__type__stdgodot_internaldotnetdotNet_t_syslistenerdotT_sysListener })) : stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>);
        var __tmp__ = _sl._listenUnix(stdgo._internal.context.Context_background.background(), _laddr), _ln:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L328"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L329"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("listen" : stdgo.GoString), net : _network?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : _laddr._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L331"
        return { _0 : _ln, _1 : (null : stdgo.Error) };
    }

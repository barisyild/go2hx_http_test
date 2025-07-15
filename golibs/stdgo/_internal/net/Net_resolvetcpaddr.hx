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
function resolveTCPAddr(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L85"
        {
            final __value__ = _network;
            if (__value__ == (("tcp" : stdgo.GoString)) || __value__ == (("tcp4" : stdgo.GoString)) || __value__ == (("tcp6" : stdgo.GoString))) {} else if (__value__ == ((stdgo.Go.str() : stdgo.GoString))) {
                _network = ("tcp" : stdgo.GoString);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L90"
                return { _0 : null, _1 : stdgo.Go.asInterface((_network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) };
            };
        };
        var __tmp__ = stdgo._internal.net.Net_defaultresolver.defaultResolver._internetAddrList(stdgo._internal.context.Context_background.background(), _network?.__copy__(), _address?.__copy__()), _addrs:stdgo._internal.net.Net_t_addrlist.T_addrList = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L93"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L94"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L96"
        return { _0 : (stdgo.Go.typeAssert(({
            final __t__ = _addrs._forResolve(_network?.__copy__(), _address?.__copy__());
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })) : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>), _1 : (null : stdgo.Error) };
    }

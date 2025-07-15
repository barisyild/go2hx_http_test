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
function _socket(_ctx:stdgo._internal.context.Context_context.Context, _net:stdgo.GoString, _family:stdgo.GoInt, _sotype:stdgo.GoInt, _proto:stdgo.GoInt, _ipv6only:Bool, _laddr:stdgo._internal.net.Net_t_sockaddr.T_sockaddr, _raddr:stdgo._internal.net.Net_t_sockaddr.T_sockaddr, _ctrlCtxFn:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } {
        var _fd = (stdgo.Go.setRef(({ _family : _family, _sotype : _sotype, _net : _net?.__copy__() } : stdgo._internal.net.Net_t_netfd.T_netFD), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD })) : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L51"
        if (((_laddr != null) && (_raddr == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L52"
            return stdgo._internal.net.Net__fakelistener._fakelistener(_fd, _laddr);
        };
        var _fd2 = (stdgo.Go.setRef(({ _family : _family, _sotype : _sotype, _net : _net?.__copy__() } : stdgo._internal.net.Net_t_netfd.T_netFD), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD })) : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L55"
        return stdgo._internal.net.Net__fakeconn._fakeconn(_fd, _fd2, _laddr, _raddr);
    }

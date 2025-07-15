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
function _filterAddrList(_filter:stdgo._internal.net.Net_ipaddr.IPAddr -> Bool, _ips:stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>, _inetaddr:stdgo._internal.net.Net_ipaddr.IPAddr -> stdgo._internal.net.Net_addr.Addr, _originalAddr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } {
        var _addrs:stdgo._internal.net.Net_t_addrlist.T_addrList = (new stdgo._internal.net.Net_t_addrlist.T_addrList(0, 0) : stdgo._internal.net.Net_t_addrlist.T_addrList);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L134"
        if (_ips != null) for (__3 => _ip in _ips) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L135"
            if (((_filter == null) || _filter(_ip?.__copy__()) : Bool)) {
                _addrs = (_addrs.__append__(_inetaddr(_ip?.__copy__())) : stdgo._internal.net.Net_t_addrlist.T_addrList);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L139"
        if ((_addrs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L140"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.net.Net__errnosuitableaddress._errNoSuitableAddress.error()?.__copy__(), addr : _originalAddr?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L142"
        return { _0 : _addrs, _1 : (null : stdgo.Error) };
    }

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
function _sortByRFC6724withSrcs(_addrs:stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>, _srcs:stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L22"
        if ((_addrs.length) != ((_srcs.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L23"
            throw new stdgo.AnyInterface(("internal error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _addrAttr = (new stdgo.Slice<stdgo._internal.net.Net_t_ipattr.T_ipAttr>((_addrs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_addrs.length : stdgo.GoInt).toBasic() > 0 ? (_addrs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.Net_t_ipattr.T_ipAttr)]) : stdgo.Slice<stdgo._internal.net.Net_t_ipattr.T_ipAttr>);
        var _srcAttr = (new stdgo.Slice<stdgo._internal.net.Net_t_ipattr.T_ipAttr>((_srcs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_srcs.length : stdgo.GoInt).toBasic() > 0 ? (_srcs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.Net_t_ipattr.T_ipAttr)]) : stdgo.Slice<stdgo._internal.net.Net_t_ipattr.T_ipAttr>);
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L27"
        if (_addrs != null) for (_i => _v in _addrs) {
            var __tmp__ = stdgo._internal.net.netip.Netip_addrfromslice.addrFromSlice(_v.iP), _addrAttrIP:stdgo._internal.net.netip.Netip_addr.Addr = __tmp__._0, __3:Bool = __tmp__._1;
            _addrAttr[(_i : stdgo.GoInt)] = stdgo._internal.net.Net__ipattrof._ipAttrOf(_addrAttrIP?.__copy__())?.__copy__();
            _srcAttr[(_i : stdgo.GoInt)] = stdgo._internal.net.Net__ipattrof._ipAttrOf(_srcs[(_i : stdgo.GoInt)])?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L32"
        stdgo._internal.sort.Sort_stable.stable(stdgo.Go.asInterface((stdgo.Go.setRef(({ _addrs : _addrs, _addrAttr : _addrAttr, _srcs : _srcs, _srcAttr : _srcAttr } : stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_byrfc6724dott_byrfc6724.__type__stdgodot_internaldotnetdotNet_t_byrfc6724dotT_byRFC6724 })) : stdgo.Ref<stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_byrfc6724dott_byrfc6724.__type__stdgodot_internaldotnetdotNet_t_byrfc6724dotT_byRFC6724 })));
    }

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
function _srcAddrs(_addrs:stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>):stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr> {
        var _srcs = (new stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>((_addrs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_addrs.length : stdgo.GoInt).toBasic() > 0 ? (_addrs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.netip.Netip_addr.Addr)]) : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>);
        var _dst = @:assignType ({ port : (9 : stdgo.GoInt) } : stdgo._internal.net.Net_udpaddr.UDPAddr);
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L46"
        if (_addrs != null) for (_i => _ in _addrs) {
            _dst.iP = _addrs[(_i : stdgo.GoInt)].iP;
            _dst.zone = _addrs[(_i : stdgo.GoInt)].zone?.__copy__();
            var __tmp__ = stdgo._internal.net.Net_dialudp.dialUDP(("udp" : stdgo.GoString), null, (stdgo.Go.setRef(_dst, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })) : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>)), _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L50"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L51"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _c.localAddr();
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })) : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), _1 : false };
                    }, _src = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            var __tmp__ = stdgo._internal.net.netip.Netip_addrfromslice.addrFromSlice((@:checkr _src ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP);
                            _srcs[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L54"
                _c.close();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L57"
        return _srcs;
    }

package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function addrPortFrom(_ip:stdgo._internal.net.netip.Netip_addr.Addr, _port:stdgo.GoUInt16):stdgo._internal.net.netip.Netip_addrport.AddrPort {
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1032"
        return ({ _ip : _ip?.__copy__(), _port : _port } : stdgo._internal.net.netip.Netip_addrport.AddrPort);
    }

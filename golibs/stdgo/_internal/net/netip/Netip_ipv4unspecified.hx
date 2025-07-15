package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function iPv4Unspecified():stdgo._internal.net.netip.Netip_addr.Addr {
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L88"
        return stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4((new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__();
    }

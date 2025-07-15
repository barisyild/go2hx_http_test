package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function iPv6Loopback():stdgo._internal.net.netip.Netip_addr.Addr {
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L82"
        return stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16({
            var s:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) 0]);
            s[15] = (1 : stdgo.GoUInt8);
            s;
        })?.__copy__();
    }

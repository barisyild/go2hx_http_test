package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function addrFrom4(_addr:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.net.netip.Netip_addr.Addr {
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L92"
        return ({ _addr : (new stdgo._internal.net.netip.Netip_t_uint128.T_uint128((0i64 : stdgo.GoUInt64), (((((281470681743360i64 : stdgo.GoUInt64) | ((_addr[(0 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_addr[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_addr[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (_addr[(3 : stdgo.GoInt)] : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo._internal.net.netip.Netip_t_uint128.T_uint128), _z : stdgo._internal.net.netip.Netip__z4._z4 } : stdgo._internal.net.netip.Netip_addr.Addr);
    }

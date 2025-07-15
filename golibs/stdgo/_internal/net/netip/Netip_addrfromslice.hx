package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function addrFromSlice(_slice:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : Bool; } {
        var _ip = ({} : stdgo._internal.net.netip.Netip_addr.Addr), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L340"
        {
            final __value__ = (_slice.length);
            if (__value__ == ((4 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L342"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : Bool; } = { _0 : stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4((_slice : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), _1 : true };
                    _ip = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L344"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : Bool; } = { _0 : stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((_slice : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), _1 : true };
                    _ip = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L346"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : Bool; } = { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : false };
            _ip = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }

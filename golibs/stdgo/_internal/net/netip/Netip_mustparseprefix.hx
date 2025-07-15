package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function mustParsePrefix(_s:stdgo.GoString):stdgo._internal.net.netip.Netip_prefix.Prefix {
        var __tmp__ = stdgo._internal.net.netip.Netip_parseprefix.parsePrefix(_s?.__copy__()), _ip:stdgo._internal.net.netip.Netip_prefix.Prefix = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1309"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1310"
            throw ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1312"
        return _ip?.__copy__();
    }

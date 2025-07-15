package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function parseAddr(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L115"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L116"
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((46 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L118"
                        return stdgo._internal.net.netip.Netip__parseipv4._parseIPv4(_s.__copy__());
                    } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L120"
                        return stdgo._internal.net.netip.Netip__parseipv6._parseIPv6(_s.__copy__());
                    } else if (__value__ == ((37 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L124"
                        return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s.__copy__(), _msg : ("missing IPv6 address" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_t_parseaddrerrordott_parseaddrerror.__type__stdgodot_internaldotnetdotnetipdotNetip_t_parseaddrerrordotT_parseAddrError) };
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L127"
        return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s?.__copy__(), _msg : ("unable to parse IP" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_t_parseaddrerrordott_parseaddrerror.__type__stdgodot_internaldotnetdotnetipdotNetip_t_parseaddrerrordotT_parseAddrError) };
    }

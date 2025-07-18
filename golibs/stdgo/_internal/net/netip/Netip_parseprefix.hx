package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function parsePrefix(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.netip.Netip_prefix.Prefix; var _1 : stdgo.Error; } {
        var _i = @:assignType (stdgo._internal.net.netip.Netip__stringslastindexbyte._stringsLastIndexByte(_s?.__copy__(), (47 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1278"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1279"
            return { _0 : (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix), _1 : stdgo._internal.errors.Errors_new_.new_(((("netip.ParsePrefix(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__() : stdgo.GoString) + ("): no \'/\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        var __tmp__ = stdgo._internal.net.netip.Netip_parseaddr.parseAddr((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()), _ip:stdgo._internal.net.netip.Netip_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1282"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1283"
            return { _0 : (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix), _1 : stdgo._internal.errors.Errors_new_.new_((((("netip.ParsePrefix(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__() : stdgo.GoString) + ("): " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1286"
        if ((_ip.is6() && (_ip._z != stdgo._internal.net.netip.Netip__z6noz._z6noz) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1287"
            return { _0 : (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix), _1 : stdgo._internal.errors.Errors_new_.new_(((("netip.ParsePrefix(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__() : stdgo.GoString) + ("): IPv6 zones cannot be present in a prefix" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        var _bitsStr = @:assignType ((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_bitsStr?.__copy__()), _bits:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1292"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1293"
            return { _0 : (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix), _1 : stdgo._internal.errors.Errors_new_.new_((((("netip.ParsePrefix(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__() : stdgo.GoString) + ("): bad bits after slash: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_bitsStr?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        var _maxBits = @:assignType (32 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1296"
        if (_ip.is6()) {
            _maxBits = (128 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1299"
        if (((_bits < (0 : stdgo.GoInt) : Bool) || (_bits > _maxBits : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1300"
            return { _0 : (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix), _1 : stdgo._internal.errors.Errors_new_.new_(((("netip.ParsePrefix(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__() : stdgo.GoString) + ("): prefix length out of range" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1302"
        return { _0 : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(_ip?.__copy__(), _bits)?.__copy__(), _1 : (null : stdgo.Error) };
    }

package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _joinHostPort(_host:stdgo.GoString, _port:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1132"
        if ((stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_host?.__copy__(), (58 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1133"
            return (((("[" : stdgo.GoString) + _host?.__copy__() : stdgo.GoString) + ("]:" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _port?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1135"
        return ((_host + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _port?.__copy__() : stdgo.GoString)?.__copy__();
    }

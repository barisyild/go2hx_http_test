package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _appendHex(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L819"
        if ((_x >= (4096 : stdgo.GoUInt16) : Bool)) {
            _b = (_b.__append__(("0123456789abcdef" : stdgo.GoString)[((_x >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L822"
        if ((_x >= (256 : stdgo.GoUInt16) : Bool)) {
            _b = (_b.__append__(("0123456789abcdef" : stdgo.GoString)[(((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) & (15 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L825"
        if ((_x >= (16 : stdgo.GoUInt16) : Bool)) {
            _b = (_b.__append__(("0123456789abcdef" : stdgo.GoString)[(((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt16) & (15 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L828"
        return (_b.__append__(("0123456789abcdef" : stdgo.GoString)[((_x & (15 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
    }

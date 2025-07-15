package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _stringsLastIndexByte(_s:stdgo.GoString, _b:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/net/netip/leaf_alts.go#L11"
        {
            var _i = @:assignType ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/netip/leaf_alts.go#L12"
                if (_s[(_i : stdgo.GoInt)] == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/netip/leaf_alts.go#L13"
                    return _i;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/leaf_alts.go#L16"
        return (-1 : stdgo.GoInt);
    }

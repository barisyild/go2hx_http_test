package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L185"
        return ((1u32 : stdgo.GoUInt) << stdgo._internal.math.bits.Bits_len.len((_length : stdgo.GoUInt)) : stdgo.GoUInt);
    }

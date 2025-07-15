package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt {
        var _shift = @:assignType (stdgo._internal.math.bits.Bits_len.len((_length : stdgo.GoUInt)) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L74"
        return ((1u32 : stdgo.GoUInt) << _shift : stdgo.GoUInt);
    }

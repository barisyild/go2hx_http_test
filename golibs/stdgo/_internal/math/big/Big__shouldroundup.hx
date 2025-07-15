package stdgo._internal.math.big;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.rand.Rand;
function _shouldRoundUp(_x:stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>, _n:stdgo.GoInt):Bool {
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L203"
        if ((((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant[(_n : stdgo.GoInt)] == (53 : stdgo.GoUInt8)) && ((_n + (1 : stdgo.GoInt) : stdgo.GoInt) == ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.length)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L205"
            return ((_n > (0 : stdgo.GoInt) : Bool) && (((((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L208"
        return ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant[(_n : stdgo.GoInt)] >= (53 : stdgo.GoUInt8) : Bool);
    }

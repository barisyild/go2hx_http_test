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
function _reciprocalWord(_d1:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        var _u = @:assignType ((_d1 << stdgo._internal.math.big.Big__nlz._nlz(_d1) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt);
        var _x1 = @:assignType (-1 ^ _u : stdgo.GoUInt);
        var _x0 = @:assignType ((-1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        var __tmp__ = stdgo._internal.math.bits.Bits_div.div(_x1, _x0, _u), _rec:stdgo.GoUInt = __tmp__._0, __7:stdgo.GoUInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L276"
        return (_rec : stdgo._internal.math.big.Big_word.Word);
    }

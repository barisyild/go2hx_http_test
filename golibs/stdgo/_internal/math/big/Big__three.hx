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
function _three():stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        //"file:///Users/o/.go/go1.21.3/src/math/big/sqrt.go#L18"
        stdgo._internal.math.big.Big__threeonce._threeOnce.do_(function():Void {
            stdgo._internal.math.big.Big__threeonce._threeOnce._v = stdgo._internal.math.big.Big_newfloat.newFloat((3 : stdgo.GoFloat64));
        });
        //"file:///Users/o/.go/go1.21.3/src/math/big/sqrt.go#L21"
        return stdgo._internal.math.big.Big__threeonce._threeOnce._v;
    }

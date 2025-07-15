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
function _alias(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):Bool {
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L375"
        return (((_x.capacity > (0 : stdgo.GoInt) : Bool) && (_y.capacity > (0 : stdgo.GoInt) : Bool) : Bool) && (stdgo.Go.pointer((_x.__slice__((0 : stdgo.GoInt), _x.capacity) : stdgo._internal.math.big.Big_t_nat.T_nat)[(_x.capacity - (1 : stdgo.GoInt) : stdgo.GoInt)]) == stdgo.Go.pointer((_y.__slice__((0 : stdgo.GoInt), _y.capacity) : stdgo._internal.math.big.Big_t_nat.T_nat)[(_y.capacity - (1 : stdgo.GoInt) : stdgo.GoInt)])) : Bool);
    }

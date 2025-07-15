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
function _karatsubaAdd(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L252"
        {
            var _c = @:assignType (stdgo._internal.math.big.Big__addvv._addVV((_z.__slice__((0 : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_t_nat.T_nat), _z, _x) : stdgo._internal.math.big.Big_word.Word);
            if (_c != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L253"
                stdgo._internal.math.big.Big__addvw._addVW((_z.__slice__(_n, (_n + (_n >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
            };
        };
    }

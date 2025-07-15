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
function _basicMul(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L199"
        (_z.__slice__((0 : stdgo.GoInt), ((_x.length) + (_y.length) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)._clear();
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L200"
        if (_y != null) for (_i => _d in _y) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L201"
            if (_d != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                _z[((_x.length) + _i : stdgo.GoInt)] = stdgo._internal.math.big.Big__addmulvvw._addMulVVW((_z.__slice__(_i, (_i + (_x.length) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, _d);
            };
        };
    }

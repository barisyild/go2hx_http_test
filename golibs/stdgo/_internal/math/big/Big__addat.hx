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
function _addAt(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _i:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L382"
        {
            var _n = @:assignType (_x.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L383"
                {
                    var _c = @:assignType (stdgo._internal.math.big.Big__addvv._addVV((_z.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_z.__slice__(_i) : stdgo._internal.math.big.Big_t_nat.T_nat), _x) : stdgo._internal.math.big.Big_word.Word);
                    if (_c != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                        var _j = @:assignType (_i + _n : stdgo.GoInt);
                        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L385"
                        if ((_j < (_z.length) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L386"
                            stdgo._internal.math.big.Big__addvw._addVW((_z.__slice__(_j) : stdgo._internal.math.big.Big_t_nat.T_nat), (_z.__slice__(_j) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
                        };
                    };
                };
            };
        };
    }

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
function _karatsuba(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        var _n = @:assignType (_y.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L279"
        if ((((_n & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt)) || (_n < stdgo._internal.math.big.Big__karatsubathreshold._karatsubaThreshold : Bool) : Bool) || (_n < (2 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L280"
            stdgo._internal.math.big.Big__basicmul._basicMul(_z, _x, _y);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L281"
            return;
        };
        var _n2 = @:assignType (_n >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
        var __0 = @:assignType (_x.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), __1 = @:assignType (_x.__slice__((0 : stdgo.GoInt), _n2) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _x0 = __1, _x1 = __0;
        var __0 = @:assignType (_y.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), __1 = @:assignType (_y.__slice__((0 : stdgo.GoInt), _n2) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _y0 = __1, _y1 = __0;
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L323"
        stdgo._internal.math.big.Big__karatsuba._karatsuba(_z, _x0, _y0);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L324"
        stdgo._internal.math.big.Big__karatsuba._karatsuba((_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _x1, _y1);
        var _s = @:assignType (1 : stdgo.GoInt);
        var _xd = @:assignType (_z.__slice__(((2 : stdgo.GoInt) * _n : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) + _n2 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L329"
        if (stdgo._internal.math.big.Big__subvv._subVV(_xd, _x1, _x0) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            _s = -_s;
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L331"
            stdgo._internal.math.big.Big__subvv._subVV(_xd, _x0, _x1);
        };
        var _yd = @:assignType (_z.__slice__((((2 : stdgo.GoInt) * _n : stdgo.GoInt) + _n2 : stdgo.GoInt), ((3 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L336"
        if (stdgo._internal.math.big.Big__subvv._subVV(_yd, _y0, _y1) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            _s = -_s;
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L338"
            stdgo._internal.math.big.Big__subvv._subVV(_yd, _y1, _y0);
        };
        var _p = @:assignType (_z.__slice__((_n * (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L344"
        stdgo._internal.math.big.Big__karatsuba._karatsuba(_p, _xd, _yd);
        var _r = @:assignType (_z.__slice__((_n * (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L349"
        _r.__copyTo__((_z.__slice__(0, (_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L359"
        stdgo._internal.math.big.Big__karatsubaadd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), _r, _n);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L360"
        stdgo._internal.math.big.Big__karatsubaadd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), (_r.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _n);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L361"
        if ((_s > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L362"
            stdgo._internal.math.big.Big__karatsubaadd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), _p, _n);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L364"
            stdgo._internal.math.big.Big__karatsubasub._karatsubaSub((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), _p, _n);
        };
    }

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
function _divWW(_x1:stdgo._internal.math.big.Big_word.Word, _x0:stdgo._internal.math.big.Big_word.Word, _y:stdgo._internal.math.big.Big_word.Word, _m:stdgo._internal.math.big.Big_word.Word):{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo._internal.math.big.Big_word.Word; } {
        var _q = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _r = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var _s = @:assignType (stdgo._internal.math.big.Big__nlz._nlz(_y) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L213"
        if (_s != ((0u32 : stdgo.GoUInt))) {
            _x1 = ((_x1 << _s : stdgo._internal.math.big.Big_word.Word) | (_x0 >> (((32u32 : stdgo.GoUInt) - _s : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
            _x0 = (_x0 << (_s) : stdgo._internal.math.big.Big_word.Word);
            _y = (_y << (_s) : stdgo._internal.math.big.Big_word.Word);
        };
        var _d = @:assignType (_y : stdgo.GoUInt);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul.mul((_m : stdgo.GoUInt), (_x1 : stdgo.GoUInt)), _t1:stdgo.GoUInt = __tmp__._0, _t0:stdgo.GoUInt = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_t0, (_x0 : stdgo.GoUInt), (0u32 : stdgo.GoUInt)), __7:stdgo.GoUInt = __tmp__._0, _c:stdgo.GoUInt = __tmp__._1;
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_t1, (_x1 : stdgo.GoUInt), _c);
            _t1 = @:tmpset0 __tmp__._0;
        };
        var _qq = @:assignType (_t1 : stdgo.GoUInt);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul.mul(_d, _qq), _dq1:stdgo.GoUInt = __tmp__._0, _dq0:stdgo.GoUInt = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub((_x0 : stdgo.GoUInt), _dq0, (0u32 : stdgo.GoUInt)), _r0:stdgo.GoUInt = __tmp__._0, _b:stdgo.GoUInt = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub((_x1 : stdgo.GoUInt), _dq1, _b), _r1:stdgo.GoUInt = __tmp__._0, __8:stdgo.GoUInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L258"
        if (_r1 != ((0u32 : stdgo.GoUInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L259"
            _qq++;
            _r0 = (_r0 - (_d) : stdgo.GoUInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L263"
        if ((_r0 >= _d : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L264"
            _qq++;
            _r0 = (_r0 - (_d) : stdgo.GoUInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L267"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo._internal.math.big.Big_word.Word; } = { _0 : (_qq : stdgo._internal.math.big.Big_word.Word), _1 : ((_r0 >> _s : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word) };
            _q = __tmp__._0;
            _r = __tmp__._1;
            __tmp__;
        };
    }

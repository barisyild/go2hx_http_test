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
function _divWVW(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _xn:stdgo._internal.math.big.Big_word.Word, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _y:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        var _r = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        _r = _xn;
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L576"
        if ((_x.length) == ((1 : stdgo.GoInt))) {
            var __tmp__ = stdgo._internal.math.bits.Bits_div.div((_r : stdgo.GoUInt), (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt), (_y : stdgo.GoUInt)), _qq:stdgo.GoUInt = __tmp__._0, _rr:stdgo.GoUInt = __tmp__._1;
            _z[(0 : stdgo.GoInt)] = (_qq : stdgo._internal.math.big.Big_word.Word);
            //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L579"
            return _r = (_rr : stdgo._internal.math.big.Big_word.Word);
        };
        var _rec = @:assignType (stdgo._internal.math.big.Big__reciprocalword._reciprocalWord(_y) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L582"
        {
            var _i = @:assignType ((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.big.Big__divww._divWW(_r, _x[(_i : stdgo.GoInt)], _y, _rec);
                    _z[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _r = @:tmpset0 __tmp__._1;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/natdiv.go#L585"
        return _r;
    }

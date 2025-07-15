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
function _addVV_g(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _y:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>):stdgo._internal.math.big.Big_word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L66"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((((_i < (_z.length) : Bool) && (_i < (_x.length) : Bool) : Bool) && (_i < (_y.length) : Bool) : Bool)) {
                var __tmp__ = stdgo._internal.math.bits.Bits_add.add((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt), (_y[(_i : stdgo.GoInt)] : stdgo.GoUInt), (_c : stdgo.GoUInt)), _zi:stdgo.GoUInt = __tmp__._0, _cc:stdgo.GoUInt = __tmp__._1;
_z[(_i : stdgo.GoInt)] = (_zi : stdgo._internal.math.big.Big_word.Word);
_c = (_cc : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L71"
        return _c;
    }

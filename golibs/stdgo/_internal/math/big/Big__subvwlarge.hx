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
function _subVWlarge(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _y:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        _c = _y;
        //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L134"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while (((_i < (_z.length) : Bool) && (_i < (_x.length) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L135"
                if (_c == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L136"
                    (_z.__slice__(_i) : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>).__copyTo__((_x.__slice__(_i) : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>));
                    //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L137"
                    return _c;
                };
var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt), (_c : stdgo.GoUInt), (0u32 : stdgo.GoUInt)), _zi:stdgo.GoUInt = __tmp__._0, _cc:stdgo.GoUInt = __tmp__._1;
_z[(_i : stdgo.GoInt)] = (_zi : stdgo._internal.math.big.Big_word.Word);
_c = (_cc : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/arith.go#L143"
        return _c;
    }

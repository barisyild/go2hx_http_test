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
function _karatsubaLen(_n:stdgo.GoInt, _threshold:stdgo.GoInt):stdgo.GoInt {
        var _i = @:assignType ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L405"
        while ((_n > _threshold : Bool)) {
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L407"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L409"
        return (_n << _i : stdgo.GoInt);
    }

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
function _low64(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt64 {
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L413"
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L414"
            return (0i64 : stdgo.GoUInt64);
        };
        var _v = @:assignType (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L417"
        if ((true && ((_x.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L418"
            return (((_x[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | _v : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L420"
        return _v;
    }

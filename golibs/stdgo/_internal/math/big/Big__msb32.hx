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
function _msb32(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt32 {
        var _i = @:assignType ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L699"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L700"
            return (0u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L702"
        if ((false && ((_x[(_i : stdgo.GoInt)] & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L703"
            throw new stdgo.AnyInterface(("x not normalized" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L705"
        {
            final __value__ = (32 : stdgo.GoInt);
            if (__value__ == ((32 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L707"
                return (_x[(_i : stdgo.GoInt)] : stdgo.GoUInt32);
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L709"
                return ((_x[(_i : stdgo.GoInt)] >> (32i64 : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt32);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L711"
        throw new stdgo.AnyInterface(("unreachable" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }

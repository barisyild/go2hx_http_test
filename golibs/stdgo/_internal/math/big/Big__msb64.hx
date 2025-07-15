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
function _msb64(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt64 {
        var _i = @:assignType ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L717"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L718"
            return (0i64 : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L720"
        if ((false && ((_x[(_i : stdgo.GoInt)] & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L721"
            throw new stdgo.AnyInterface(("x not normalized" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L723"
        {
            final __value__ = (32 : stdgo.GoInt);
            if (__value__ == ((32 : stdgo.GoInt))) {
                var _v = @:assignType ((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L726"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _v = (_v | ((_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L729"
                return _v;
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L731"
                return (_x[(_i : stdgo.GoInt)] : stdgo.GoUInt64);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L733"
        throw new stdgo.AnyInterface(("unreachable" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }

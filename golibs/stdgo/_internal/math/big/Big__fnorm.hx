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
function _fnorm(_m:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoInt64 {
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L584"
        if ((false && (((_m.length == (0 : stdgo.GoInt)) || (_m[((_m.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L585"
            throw new stdgo.AnyInterface(("msw of mantissa is 0" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _s = @:assignType (stdgo._internal.math.big.Big__nlz._nlz(_m[((_m.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L588"
        if ((_s > (0u32 : stdgo.GoUInt) : Bool)) {
            var _c = @:assignType (stdgo._internal.math.big.Big__shlvu._shlVU(_m, _m, _s) : stdgo._internal.math.big.Big_word.Word);
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L590"
            if ((false && (_c != (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L591"
                throw new stdgo.AnyInterface(("nlz or shlVU incorrect" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L594"
        return (_s : stdgo.GoInt64);
    }

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
function _validateBinaryOperands(_x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L1197"
        if (true) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L1199"
            throw new stdgo.AnyInterface(("validateBinaryOperands called but debugFloat is not set" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L1201"
        if (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L1202"
            throw new stdgo.AnyInterface(("empty mantissa for x" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L1204"
        if (((@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L1205"
            throw new stdgo.AnyInterface(("empty mantissa for y" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }

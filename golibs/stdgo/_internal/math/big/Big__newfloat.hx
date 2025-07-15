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
function _newFloat(_prec2:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_float_dotfloat_.__type__stdgodot_internaldotmathdotbigdotBig_float_dotFloat_ })) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant._make((((_prec2 / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/math/big/sqrt.go#L129"
        return _z;
    }

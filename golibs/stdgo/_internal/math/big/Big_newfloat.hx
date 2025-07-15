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
function newFloat(_x:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L89"
        if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L90"
            throw new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("NewFloat(NaN)" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN), _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_errnandoterrnan.__type__stdgodot_internaldotmathdotbigdotBig_errnandotErrNaN), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_errnandoterrnan.__type__stdgodot_internaldotmathdotbigdotBig_errnandotErrNaN));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L92"
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_float_dotfloat_.__type__stdgodot_internaldotmathdotbigdotBig_float_dotFloat_ })) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setFloat64(_x);
    }

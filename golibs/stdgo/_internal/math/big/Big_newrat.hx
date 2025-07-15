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
function newRat(_a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L34"
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_ratdotrat.__type__stdgodot_internaldotmathdotbigdotBig_ratdotRat })) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFrac64(_a, _b);
    }

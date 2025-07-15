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
function _putNat(_x:stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>):Void {
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L656"
        stdgo._internal.math.big.Big__natpool._natPool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_x, _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_t_natdott_nat.__type__stdgodot_internaldotmathdotbigdotBig_t_natdotT_nat), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_t_natdott_nat.__type__stdgodot_internaldotmathdotbigdotBig_t_natdotT_nat }))));
    }

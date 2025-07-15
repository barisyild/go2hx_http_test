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
function _getNat(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat> {
        var _z:stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L642"
        {
            var _v = @:assignType (stdgo._internal.math.big.Big__natpool._natPool.get() : stdgo.AnyInterface);
            if (({
                final value = _v;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _z = (stdgo.Go.typeAssert(_v, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_t_natdott_nat.__type__stdgodot_internaldotmathdotbigdotBig_t_natdotT_nat })) : stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L645"
        if (({
            final value = _z;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _z = (stdgo.Go.setRef((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_t_natdott_nat.__type__stdgodot_internaldotmathdotbigdotBig_t_natdotT_nat })) : stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>);
        };
        @:_1 (_z : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._make(_n));
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L649"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            ((_z : stdgo._internal.math.big.Big_t_nat.T_nat))[(0 : stdgo.GoInt)] = (1043915u32 : stdgo._internal.math.big.Big_word.Word);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/nat.go#L652"
        return _z;
    }

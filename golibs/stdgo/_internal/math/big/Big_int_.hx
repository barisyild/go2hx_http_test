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
@:structInit @:using(stdgo._internal.math.big.Big_int__static_extension.Int__static_extension) @:using(stdgo._internal.math.big.Big_int__static_extension.Int__static_extension) class Int_ {
    public var _neg : Bool = false;
    public var _abs : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public function new(?_neg:Bool, ?_abs:stdgo._internal.math.big.Big_t_nat.T_nat) {
        if (_neg != null) this._neg = _neg;
        if (_abs != null) this._abs = _abs;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_neg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_abs", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_t_natdott_nat.__type__stdgodot_internaldotmathdotbigdotBig_t_natdotT_nat }, optional : false }])));
    public function __copy__() {
        return new Int_(_neg, _abs);
    }
}

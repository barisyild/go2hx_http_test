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
@:structInit @:using(stdgo._internal.math.big.Big_t_divisor_static_extension.T_divisor_static_extension) @:using(stdgo._internal.math.big.Big_t_divisor_static_extension.T_divisor_static_extension) class T_divisor {
    public var _bbb : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public var _nbits : stdgo.GoInt = 0;
    public var _ndigits : stdgo.GoInt = 0;
    public function new(?_bbb:stdgo._internal.math.big.Big_t_nat.T_nat, ?_nbits:stdgo.GoInt, ?_ndigits:stdgo.GoInt) {
        if (_bbb != null) this._bbb = _bbb;
        if (_nbits != null) this._nbits = _nbits;
        if (_ndigits != null) this._ndigits = _ndigits;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_bbb", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_t_natdott_nat.__type__stdgodot_internaldotmathdotbigdotBig_t_natdotT_nat }, optional : false }, { name : "_nbits", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_ndigits", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_divisor(_bbb, _nbits, _ndigits);
    }
}

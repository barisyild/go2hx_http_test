package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.strconv.Strconv_t_decimal_static_extension.T_decimal_static_extension) @:using(stdgo._internal.strconv.Strconv_t_decimal_static_extension.T_decimal_static_extension) class T_decimal {
    public var _d : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(800, 800).__setNumber32__();
    public var _nd : stdgo.GoInt = 0;
    public var _dp : stdgo.GoInt = 0;
    public var _neg : Bool = false;
    public var _trunc : Bool = false;
    public function new(?_d:stdgo.GoArray<stdgo.GoUInt8>, ?_nd:stdgo.GoInt, ?_dp:stdgo.GoInt, ?_neg:Bool, ?_trunc:Bool) {
        if (_d != null) this._d = _d;
        if (_nd != null) this._nd = _nd;
        if (_dp != null) this._dp = _dp;
        if (_neg != null) this._neg = _neg;
        if (_trunc != null) this._trunc = _trunc;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 800) }, optional : false }, { name : "_nd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_dp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_neg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_trunc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_decimal(_d, _nd, _dp, _neg, _trunc);
    }
}

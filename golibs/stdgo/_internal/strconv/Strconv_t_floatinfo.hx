package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.strconv.Strconv_t_floatinfo_static_extension.T_floatInfo_static_extension) @:using(stdgo._internal.strconv.Strconv_t_floatinfo_static_extension.T_floatInfo_static_extension) class T_floatInfo {
    public var _mantbits : stdgo.GoUInt = 0;
    public var _expbits : stdgo.GoUInt = 0;
    public var _bias : stdgo.GoInt = 0;
    public function new(?_mantbits:stdgo.GoUInt, ?_expbits:stdgo.GoUInt, ?_bias:stdgo.GoInt) {
        if (_mantbits != null) this._mantbits = _mantbits;
        if (_expbits != null) this._expbits = _expbits;
        if (_bias != null) this._bias = _bias;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mantbits", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) }, optional : false }, { name : "_expbits", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) }, optional : false }, { name : "_bias", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_floatInfo(_mantbits, _expbits, _bias);
    }
}

package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_valuerange_static_extension.T_valueRange_static_extension) @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_valuerange_static_extension.T_valueRange_static_extension) class T_valueRange {
    public var _value : stdgo.GoUInt16 = 0;
    public var _lo : stdgo.GoUInt8 = 0;
    public var _hi : stdgo.GoUInt8 = 0;
    public function new(?_value:stdgo.GoUInt16, ?_lo:stdgo.GoUInt8, ?_hi:stdgo.GoUInt8) {
        if (_value != null) this._value = _value;
        if (_lo != null) this._lo = _lo;
        if (_hi != null) this._hi = _hi;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "_lo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_hi", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }])));
    public function __copy__() {
        return new T_valueRange(_value, _lo, _hi);
    }
}

package stdgo._internal.unicode.utf8;
@:structInit @:using(stdgo._internal.unicode.utf8.Utf8_t_acceptrange_static_extension.T_acceptRange_static_extension) @:using(stdgo._internal.unicode.utf8.Utf8_t_acceptrange_static_extension.T_acceptRange_static_extension) class T_acceptRange {
    public var _lo : stdgo.GoUInt8 = 0;
    public var _hi : stdgo.GoUInt8 = 0;
    public function new(?_lo:stdgo.GoUInt8, ?_hi:stdgo.GoUInt8) {
        if (_lo != null) this._lo = _lo;
        if (_hi != null) this._hi = _hi;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_lo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_hi", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }])));
    public function __copy__() {
        return new T_acceptRange(_lo, _hi);
    }
}

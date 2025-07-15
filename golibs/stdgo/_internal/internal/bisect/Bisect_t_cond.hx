package stdgo._internal.internal.bisect;
@:structInit @:using(stdgo._internal.internal.bisect.Bisect_t_cond_static_extension.T_cond_static_extension) @:using(stdgo._internal.internal.bisect.Bisect_t_cond_static_extension.T_cond_static_extension) class T_cond {
    public var _mask : stdgo.GoUInt64 = 0;
    public var _bits : stdgo.GoUInt64 = 0;
    public var _result : Bool = false;
    public function new(?_mask:stdgo.GoUInt64, ?_bits:stdgo.GoUInt64, ?_result:Bool) {
        if (_mask != null) this._mask = _mask;
        if (_bits != null) this._bits = _bits;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_bits", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_result", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_cond(_mask, _bits, _result);
    }
}

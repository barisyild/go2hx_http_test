package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.time.Time_location_static_extension.Location_static_extension) @:using(stdgo._internal.time.Time_location_static_extension.Location_static_extension) class Location {
    public var _name : stdgo.GoString = "";
    public var _zone : stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone> = (null : stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>);
    public var _tx : stdgo.Slice<stdgo._internal.time.Time_t_zonetrans.T_zoneTrans> = (null : stdgo.Slice<stdgo._internal.time.Time_t_zonetrans.T_zoneTrans>);
    public var _extend : stdgo.GoString = "";
    public var _cacheStart : stdgo.GoInt64 = 0;
    public var _cacheEnd : stdgo.GoInt64 = 0;
    public var _cacheZone : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone> = (null : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
    public function new(?_name:stdgo.GoString, ?_zone:stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>, ?_tx:stdgo.Slice<stdgo._internal.time.Time_t_zonetrans.T_zoneTrans>, ?_extend:stdgo.GoString, ?_cacheStart:stdgo.GoInt64, ?_cacheEnd:stdgo.GoInt64, ?_cacheZone:stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>) {
        if (_name != null) this._name = _name;
        if (_zone != null) this._zone = _zone;
        if (_tx != null) this._tx = _tx;
        if (_extend != null) this._extend = _extend;
        if (_cacheStart != null) this._cacheStart = _cacheStart;
        if (_cacheEnd != null) this._cacheEnd = _cacheEnd;
        if (_cacheZone != null) this._cacheZone = _cacheZone;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_zone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_zonedott_zone.__type__stdgodot_internaldottimedotTime_t_zonedotT_zone }) }, optional : false }, { name : "_tx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_zonetransdott_zonetrans.__type__stdgodot_internaldottimedotTime_t_zonetransdotT_zoneTrans }) }, optional : false }, { name : "_extend", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cacheStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheZone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_t_zonedott_zone.__type__stdgodot_internaldottimedotTime_t_zonedotT_zone }) }, optional : false }])));
    public function __copy__() {
        return new Location(_name, _zone, _tx, _extend, _cacheStart, _cacheEnd, _cacheZone);
    }
}

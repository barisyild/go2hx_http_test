package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.time.Time_time_static_extension.Time_static_extension) @:using(stdgo._internal.time.Time_time_static_extension.Time_static_extension) class Time {
    public var _wall : stdgo.GoUInt64 = 0;
    public var _ext : stdgo.GoInt64 = 0;
    public var _loc : stdgo.Ref<stdgo._internal.time.Time_location.Location> = (null : stdgo.Ref<stdgo._internal.time.Time_location.Location>);
    public function new(?_wall:stdgo.GoUInt64, ?_ext:stdgo.GoInt64, ?_loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>) {
        if (_wall != null) this._wall = _wall;
        if (_ext != null) this._ext = _ext;
        if (_loc != null) this._loc = _loc;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_ext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_loc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_locationdotlocation.__type__stdgodot_internaldottimedotTime_locationdotLocation }) }, optional : false }])));
    public function __copy__() {
        return new Time(_wall, _ext, _loc);
    }
}

package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
class Time_asInterface {
    @:keep
    public dynamic function round(_d:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_time.Time return @:_0 __self__.value.round(_d);
    @:keep
    public dynamic function truncate(_d:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_time.Time return @:_0 __self__.value.truncate(_d);
    @:keep
    public dynamic function isDST():Bool return @:_0 __self__.value.isDST();
    @:keep
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalText(_data);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:keep
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalJSON(_data);
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalJSON();
    @:keep
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.gobDecode(_data);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.gobEncode();
    @:keep
    public dynamic function unmarshalBinary(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalBinary(_data);
    @:keep
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalBinary();
    @:keep
    public dynamic function unixNano():stdgo.GoInt64 return @:_0 __self__.value.unixNano();
    @:keep
    public dynamic function unixMicro():stdgo.GoInt64 return @:_0 __self__.value.unixMicro();
    @:keep
    public dynamic function unixMilli():stdgo.GoInt64 return @:_0 __self__.value.unixMilli();
    @:keep
    public dynamic function unix():stdgo.GoInt64 return @:_0 __self__.value.unix();
    @:keep
    public dynamic function zoneBounds():{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo._internal.time.Time_time.Time; } return @:_0 __self__.value.zoneBounds();
    @:keep
    public dynamic function zone():{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } return @:_0 __self__.value.zone();
    @:keep
    public dynamic function location():stdgo.Ref<stdgo._internal.time.Time_location.Location> return @:_0 __self__.value.location();
    @:keep
    public dynamic function in_(_loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo._internal.time.Time_time.Time return @:_0 __self__.value.in_(_loc);
    @:keep
    public dynamic function local():stdgo._internal.time.Time_time.Time return @:_0 __self__.value.local();
    @:keep
    public dynamic function uTC():stdgo._internal.time.Time_time.Time return @:_0 __self__.value.uTC();
    @:keep
    public dynamic function _date(_full:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_month.Month; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } return @:_0 __self__.value._date(_full);
    @:keep
    public dynamic function addDate(_years:stdgo.GoInt, _months:stdgo.GoInt, _days:stdgo.GoInt):stdgo._internal.time.Time_time.Time return @:_0 __self__.value.addDate(_years, _months, _days);
    @:keep
    public dynamic function sub(_u:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value.sub(_u);
    @:keep
    public dynamic function add(_d:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_time.Time return @:_0 __self__.value.add(_d);
    @:keep
    public dynamic function yearDay():stdgo.GoInt return @:_0 __self__.value.yearDay();
    @:keep
    public dynamic function nanosecond():stdgo.GoInt return @:_0 __self__.value.nanosecond();
    @:keep
    public dynamic function second():stdgo.GoInt return @:_0 __self__.value.second();
    @:keep
    public dynamic function minute():stdgo.GoInt return @:_0 __self__.value.minute();
    @:keep
    public dynamic function hour():stdgo.GoInt return @:_0 __self__.value.hour();
    @:keep
    public dynamic function clock():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } return @:_0 __self__.value.clock();
    @:keep
    public dynamic function iSOWeek():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return @:_0 __self__.value.iSOWeek();
    @:keep
    public dynamic function weekday():stdgo._internal.time.Time_weekday.Weekday return @:_0 __self__.value.weekday();
    @:keep
    public dynamic function day():stdgo.GoInt return @:_0 __self__.value.day();
    @:keep
    public dynamic function month():stdgo._internal.time.Time_month.Month return @:_0 __self__.value.month();
    @:keep
    public dynamic function year():stdgo.GoInt return @:_0 __self__.value.year();
    @:keep
    public dynamic function date():{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_month.Month; var _2 : stdgo.GoInt; } return @:_0 __self__.value.date();
    @:keep
    public dynamic function _locabs():{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoUInt64; } return @:_0 __self__.value._locabs();
    @:keep
    public dynamic function _abs():stdgo.GoUInt64 return @:_0 __self__.value._abs();
    @:keep
    public dynamic function isZero():Bool return @:_0 __self__.value.isZero();
    @:keep
    public dynamic function equal(_u:stdgo._internal.time.Time_time.Time):Bool return @:_0 __self__.value.equal(_u);
    @:keep
    public dynamic function compare(_u:stdgo._internal.time.Time_time.Time):stdgo.GoInt return @:_0 __self__.value.compare(_u);
    @:keep
    public dynamic function before(_u:stdgo._internal.time.Time_time.Time):Bool return @:_0 __self__.value.before(_u);
    @:keep
    public dynamic function after(_u:stdgo._internal.time.Time_time.Time):Bool return @:_0 __self__.value.after(_u);
    @:keep
    public dynamic function _mono():stdgo.GoInt64 return @:_0 __self__.value._mono();
    @:keep
    public dynamic function _setMono(_m:stdgo.GoInt64):Void @:_0 __self__.value._setMono(_m);
    @:keep
    public dynamic function _stripMono():Void @:_0 __self__.value._stripMono();
    @:keep
    public dynamic function _setLoc(_loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>):Void @:_0 __self__.value._setLoc(_loc);
    @:keep
    public dynamic function _addSec(_d:stdgo.GoInt64):Void @:_0 __self__.value._addSec(_d);
    @:keep
    public dynamic function _unixSec():stdgo.GoInt64 return @:_0 __self__.value._unixSec();
    @:keep
    public dynamic function _sec():stdgo.GoInt64 return @:_0 __self__.value._sec();
    @:keep
    public dynamic function _nsec():stdgo.GoInt32 return @:_0 __self__.value._nsec();
    @:keep
    public dynamic function _appendStrictRFC3339(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._appendStrictRFC3339(_b);
    @:keep
    public dynamic function _appendFormatRFC3339(_b:stdgo.Slice<stdgo.GoUInt8>, _nanos:Bool):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._appendFormatRFC3339(_b, _nanos);
    @:keep
    public dynamic function _appendFormat(_b:stdgo.Slice<stdgo.GoUInt8>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._appendFormat(_b, _layout);
    @:keep
    public dynamic function appendFormat(_b:stdgo.Slice<stdgo.GoUInt8>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.appendFormat(_b, _layout);
    @:keep
    public dynamic function format(_layout:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.format(_layout);
    @:keep
    public dynamic function goString():stdgo.GoString return @:_0 __self__.value.goString();
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.time.Time_timepointer.TimePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

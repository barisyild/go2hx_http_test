package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.time.Time.Weekday_asInterface) class Weekday_static_extension {
    @:keep
    @:tdfield
    static public function string( _d:stdgo._internal.time.Time_weekday.Weekday):stdgo.GoString {
        @:recv var _d:stdgo._internal.time.Time_weekday.Weekday = _d;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L345"
        if ((((0 : stdgo._internal.time.Time_weekday.Weekday) <= _d : Bool) && (_d <= (6 : stdgo._internal.time.Time_weekday.Weekday) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L346"
            return stdgo._internal.time.Time__longdaynames._longDayNames[(_d : stdgo.GoInt)]?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = @:assignType (stdgo._internal.time.Time__fmtint._fmtInt(_buf, (_d : stdgo.GoUInt64)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L350"
        return ((("%!Weekday(" : stdgo.GoString) + ((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.time.Time.Month_asInterface) class Month_static_extension {
    @:keep
    @:tdfield
    static public function string( _m:stdgo._internal.time.Time_month.Month):stdgo.GoString {
        @:recv var _m:stdgo._internal.time.Time_month.Month = _m;
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L322"
        if ((((1 : stdgo._internal.time.Time_month.Month) <= _m : Bool) && (_m <= (12 : stdgo._internal.time.Time_month.Month) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L323"
            return stdgo._internal.time.Time__longmonthnames._longMonthNames[((_m - (1 : stdgo._internal.time.Time_month.Month) : stdgo._internal.time.Time_month.Month) : stdgo.GoInt)]?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = @:assignType (stdgo._internal.time.Time__fmtint._fmtInt(_buf, (_m : stdgo.GoUInt64)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L327"
        return ((("%!Month(" : stdgo.GoString) + ((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

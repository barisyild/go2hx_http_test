package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
private function _parseRFC3339__tp__0(_s:stdgo.Slice<stdgo.GoUInt8>, _local:stdgo.Ref<stdgo._internal.time.Time_location.Location>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } {
        return { _0 : stdgo._internal.time.Time_now.now(), _1 : true };
    }
overload inline extern function _parseRFC3339(_s:stdgo.Slice<stdgo.GoUInt8>, _local:stdgo.Ref<stdgo._internal.time.Time_location.Location>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return _parseRFC3339__tp__0(_s, _local);
private function _parseRFC3339__tp__1(_s:stdgo.GoString, _local:stdgo.Ref<stdgo._internal.time.Time_location.Location>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } {
        return { _0 : stdgo._internal.time.Time_now.now(), _1 : true };
    }
overload inline extern function _parseRFC3339(_s:stdgo.GoString, _local:stdgo.Ref<stdgo._internal.time.Time_location.Location>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return _parseRFC3339__tp__1(_s, _local);

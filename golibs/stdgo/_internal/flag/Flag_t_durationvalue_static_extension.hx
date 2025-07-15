package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.flag.Flag.T_durationValue_asInterface) class T_durationValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _d:stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L296"
        return (new stdgo.Pointer<stdgo._internal.time.Time_duration.Duration>(() -> (_d.value : stdgo._internal.time.Time_duration.Duration), v -> (_d.value = (v : stdgo._internal.flag.Flag_t_durationvalue.T_durationValue) : stdgo._internal.time.Time_duration.Duration)).value.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _d:stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>):stdgo.AnyInterface {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L294"
        return new stdgo.AnyInterface(stdgo.Go.asInterface((_d.value : stdgo._internal.time.Time_duration.Duration), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _d:stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.time.Time_parseduration.parseDuration(_s?.__copy__()), _v:stdgo._internal.time.Time_duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L287"
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__errparse._errParse;
        };
        _d.value = (_v : stdgo._internal.flag.Flag_t_durationvalue.T_durationValue);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L291"
        return _err;
    }
}

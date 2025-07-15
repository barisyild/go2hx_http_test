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
function _newDurationValue(_val:stdgo._internal.time.Time_duration.Duration, _p:stdgo.Pointer<stdgo._internal.time.Time_duration.Duration>):stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue> {
        _p.value = _val;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L282"
        return new stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>(() -> (_p.value : stdgo._internal.flag.Flag_t_durationvalue.T_durationValue), v -> (_p.value = (v : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.flag.Flag_t_durationvalue.T_durationValue));
    }

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
function _newUint64Value(_val:stdgo.GoUInt64, _p:stdgo.Pointer<stdgo.GoUInt64>):stdgo.Pointer<stdgo._internal.flag.Flag_t_uint64value.T_uint64Value> {
        _p.value = _val;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L223"
        return new stdgo.Pointer<stdgo._internal.flag.Flag_t_uint64value.T_uint64Value>(() -> (_p.value : stdgo._internal.flag.Flag_t_uint64value.T_uint64Value), v -> (_p.value = (v : stdgo.GoUInt64) : stdgo._internal.flag.Flag_t_uint64value.T_uint64Value));
    }

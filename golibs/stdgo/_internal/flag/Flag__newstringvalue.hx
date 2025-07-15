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
function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue> {
        _p.value = _val?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L244"
        return new stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>(() -> (_p.value : stdgo._internal.flag.Flag_t_stringvalue.T_stringValue), v -> (_p.value = (v : stdgo.GoString) : stdgo._internal.flag.Flag_t_stringvalue.T_stringValue));
    }

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
function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L490"
        return ((@:checkr stdgo._internal.flag.Flag_commandline.commandLine ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal[_name] ?? (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>));
    }

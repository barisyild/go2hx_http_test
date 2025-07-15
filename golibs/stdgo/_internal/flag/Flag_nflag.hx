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
function nFlag():stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L715"
        return ((@:checkr stdgo._internal.flag.Flag_commandline.commandLine ?? throw stdgo.Error._nullPointerDereference.__underlying__())._actual.length);
    }

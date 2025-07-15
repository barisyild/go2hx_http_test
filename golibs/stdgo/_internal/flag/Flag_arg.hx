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
function arg(_i:stdgo.GoInt):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L731"
        return stdgo._internal.flag.Flag_commandline.commandLine.arg(_i)?.__copy__();
    }

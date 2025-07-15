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
function set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L533"
        return stdgo._internal.flag.Flag_commandline.commandLine._set(_name?.__copy__(), _value?.__copy__());
    }

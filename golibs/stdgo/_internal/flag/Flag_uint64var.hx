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
function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L859"
        stdgo._internal.flag.Flag_commandline.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newuint64value._newUint64Value(_value, _p), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_uint64valuedott_uint64value.__type__stdgodot_internaldotflagdotFlag_t_uint64valuedotT_uint64Value })), _name?.__copy__(), _usage?.__copy__());
    }

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
function newFlagSet(_name:stdgo.GoString, _errorHandling:stdgo._internal.flag.Flag_errorhandling.ErrorHandling):stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> {
        var _f = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _errorHandling : _errorHandling } : stdgo._internal.flag.Flag_flagset.FlagSet), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_flagsetdotflagset.__type__stdgodot_internaldotflagdotFlag_flagsetdotFlagSet })) : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).usage = _f._defaultUsage;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1222"
        return _f;
    }

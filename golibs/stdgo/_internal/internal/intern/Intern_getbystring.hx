package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
function getByString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> {
        //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L92"
        return stdgo._internal.internal.intern.Intern__get._get(({ _s : _s?.__copy__(), _isString : true } : stdgo._internal.internal.intern.Intern_t_key.T_key));
    }

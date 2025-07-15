package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
function get(_cmpVal:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> {
        //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L85"
        return stdgo._internal.internal.intern.Intern__get._get(stdgo._internal.internal.intern.Intern__keyfor._keyFor(_cmpVal)?.__copy__());
    }

package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
function _safeMap():stdgo.GoMap<stdgo._internal.internal.intern.Intern_t_key.T_key, stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>> {
        //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L74"
        if (stdgo._internal.internal.intern.Intern__intern._intern.value() == (("leaky" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L75"
            return ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.internal.intern.Intern_t_key.T_key, stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotinternaldotinterndotintern_t_keydott_key.__type__stdgodot_internaldotinternaldotinterndotIntern_t_keydotT_key);
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.internal.intern.Intern_t_key.T_key, stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L77"
        return (({
            final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.intern.Intern_t_key.T_key, stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>> = null;
            cast x;
        } : stdgo.GoMap<stdgo._internal.internal.intern.Intern_t_key.T_key, stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>>));
    }

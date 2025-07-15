package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function _contextName(_c:stdgo._internal.context.Context_context.Context):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L518"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _c;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_stringerdott_stringer.__type__stdgodot_internaldotcontextdotContext_t_stringerdotT_stringer) : stdgo._internal.context.Context_t_stringer.T_stringer), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.context.Context_t_stringer.T_stringer), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L519"
                return (_s.string() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L521"
        return (stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf(({
            final __t__ = _c;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).string() : stdgo.GoString)?.__copy__();
    }

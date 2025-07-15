package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function _stringify(_v:stdgo.AnyInterface):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L732"
        {
            final __type__ = _v;
            if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_stringerdott_stringer.__type__stdgodot_internaldotcontextdotContext_t_stringerdotT_stringer)) {
                var _s:stdgo._internal.context.Context_t_stringer.T_stringer = __type__ == null ? (null : stdgo._internal.context.Context_t_stringer.T_stringer) : __type__.__underlying__() == null ? (null : stdgo._internal.context.Context_t_stringer.T_stringer) : __type__ == null ? (null : stdgo._internal.context.Context_t_stringer.T_stringer) : __type__.__underlying__().value;
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L734"
                return (_s.string() : stdgo.GoString)?.__copy__();
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(string_kind))) {
                var _s:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L736"
                return _s?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L738"
        return ("<not Stringer>" : stdgo.GoString);
    }

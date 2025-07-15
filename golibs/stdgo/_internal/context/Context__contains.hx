package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function _contains(_m:stdgo.GoMap<stdgo._internal.context.Context_t_canceler.T_canceler, stdgo._internal.context.Context_t__struct_4.T__struct_4>, _key:stdgo._internal.context.Context_t_canceler.T_canceler):Bool {
        var __tmp__ = (_m != null && _m.__exists__(_key) ? { _0 : _m[_key], _1 : true } : { _0 : ({  } : stdgo._internal.context.Context_t__struct_4.T__struct_4), _1 : false }), __0:stdgo._internal.context.Context_t__struct_4.T__struct_4 = __tmp__._0, _ret:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L40"
        return _ret;
    }

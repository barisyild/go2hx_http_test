package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function _removeChild(_parent:stdgo._internal.context.Context_context.Context, _child:stdgo._internal.context.Context_t_canceler.T_canceler):Void {
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L385"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _parent;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_stopctxdott_stopctx.__type__stdgodot_internaldotcontextdotContext_t_stopctxdotT_stopCtx) : stdgo._internal.context.Context_t_stopctx.T_stopCtx), _1 : true };
            } catch(__exception__) {
                { _0 : ({} : stdgo._internal.context.Context_t_stopctx.T_stopCtx), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L386"
                _s._stop();
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L387"
                return;
            };
        };
        var __tmp__ = stdgo._internal.context.Context__parentcancelctx._parentCancelCtx(_parent), _p:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L390"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L391"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L393"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L394"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children != null) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L395"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children != null) (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.__remove__(_child);
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L397"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
    }

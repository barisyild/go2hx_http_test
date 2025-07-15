package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function withDeadlineCause(_parent:stdgo._internal.context.Context_context.Context, _d:stdgo._internal.time.Time_time.Time, _cause:stdgo.Error):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L614"
            if (_parent == null) {
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L615"
                throw new stdgo.AnyInterface(("cannot create context from nil parent" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L617"
            {
                var __tmp__ = _parent.deadline(), _cur:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && _cur.before(_d?.__copy__()) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L619"
                    return stdgo._internal.context.Context_withcancel.withCancel(_parent);
                };
            };
            var _c = (stdgo.Go.setRef(({ _deadline : _d?.__copy__() } : stdgo._internal.context.Context_t_timerctx.T_timerCtx), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_timerctxdott_timerctx.__type__stdgodot_internaldotcontextdotContext_t_timerctxdotT_timerCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>);
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L624"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx._propagateCancel(_parent, stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_timerctxdott_timerctx.__type__stdgodot_internaldotcontextdotContext_t_timerctxdotT_timerCtx })));
            var _dur = @:assignType (stdgo._internal.time.Time_until.until(_d?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L626"
            if ((_dur <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L627"
                _c._cancel(true, stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded, _cause);
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L628"
                return { _0 : stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_timerctxdott_timerctx.__type__stdgodot_internaldotcontextdotContext_t_timerctxdotT_timerCtx })), _1 : function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L628"
                    _c._cancel(false, stdgo._internal.context.Context_canceled.canceled, (null : stdgo.Error));
                } };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L630"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx._mu.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L632"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx._err == null) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._timer = stdgo._internal.time.Time_afterfunc.afterFunc(_dur, function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L634"
                    _c._cancel(true, stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded, _cause);
                });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L637"
            {
                final __ret__:{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } = { _0 : stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_timerctxdott_timerctx.__type__stdgodot_internaldotcontextdotContext_t_timerctxdotT_timerCtx })), _1 : function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L637"
                    _c._cancel(true, stdgo._internal.context.Context_canceled.canceled, (null : stdgo.Error));
                } };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : (null : stdgo._internal.context.Context_context.Context), _1 : (null : stdgo._internal.context.Context_cancelfunc.CancelFunc) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : (null : stdgo._internal.context.Context_context.Context), _1 : (null : stdgo._internal.context.Context_cancelfunc.CancelFunc) };
            };
        };
    }

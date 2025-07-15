package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function xTestCustomContextGoroutines(_t:stdgo._internal.context.Context_t_testingt.T_testingT):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _g = @:assignType (stdgo._internal.context.Context__goroutines._goroutines.load() : stdgo.GoInt32);
            var _checkNoGoroutine = @:assignType (function():Void {
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L237"
                _t.helper();
                var _now = @:assignType (stdgo._internal.context.Context__goroutines._goroutines.load() : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L239"
                if (_now != (_g)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L240"
                    _t.fatalf(("%d goroutines created" : stdgo.GoString), new stdgo.AnyInterface((_now - _g : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                };
            } : () -> Void);
            var _checkCreatedGoroutine = @:assignType (function():Void {
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L244"
                _t.helper();
                var _now = @:assignType (stdgo._internal.context.Context__goroutines._goroutines.load() : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L246"
                if (_now != ((_g + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L247"
                    _t.fatalf(("%d goroutines created, want 1" : stdgo.GoString), new stdgo.AnyInterface((_now - _g : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                };
                _g = _now;
            } : () -> Void);
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx(stdgo._internal.context.Context_background.background()) : stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_mydonectxdott_mydonectx.__type__stdgodot_internaldotcontextdotContext_t_mydonectxdotT_myDoneCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_mydonectxdott_mydonectx.__type__stdgodot_internaldotcontextdotContext_t_mydonectxdotT_myDoneCtx }))), __0:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel0:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L253"
            _cancel0();
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L254"
            _checkCreatedGoroutine();
            {
                var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx(stdgo._internal.context.Context_background.background()) : stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_mydonectxdott_mydonectx.__type__stdgodot_internaldotcontextdotContext_t_mydonectxdotT_myDoneCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_mydonectxdott_mydonectx.__type__stdgodot_internaldotcontextdotContext_t_mydonectxdotT_myDoneCtx })), (3600000000000000i64 : stdgo._internal.time.Time_duration.Duration));
                _cancel0 = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L257"
            _cancel0();
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L258"
            _checkCreatedGoroutine();
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L260"
            _checkNoGoroutine();
            {
                final __f__ = _checkNoGoroutine;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx1:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel1:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel1;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L265"
            _checkNoGoroutine();
            var _ctx2 = (stdgo.Go.setRef((new stdgo._internal.context.Context_t_myctx.T_myCtx(_ctx1) : stdgo._internal.context.Context_t_myctx.T_myCtx), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_myctxdott_myctx.__type__stdgodot_internaldotcontextdotContext_t_myctxdotT_myCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_myctx.T_myCtx>);
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo.Go.asInterface(_ctx2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_myctxdott_myctx.__type__stdgodot_internaldotcontextdotContext_t_myctxdotT_myCtx }))), _ctx3:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel3:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel3;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L270"
            _checkNoGoroutine();
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx(stdgo.Go.asInterface(_ctx2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_myctxdott_myctx.__type__stdgodot_internaldotcontextdotContext_t_myctxdotT_myCtx }))) : stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_mydonectxdott_mydonectx.__type__stdgodot_internaldotcontextdotContext_t_mydonectxdotT_myDoneCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_mydonectxdott_mydonectx.__type__stdgodot_internaldotcontextdotContext_t_mydonectxdotT_myDoneCtx }))), __1:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel3b:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel3b;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L274"
            _checkCreatedGoroutine();
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx3, (3600000000000000i64 : stdgo._internal.time.Time_duration.Duration)), _ctx4:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel4:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel4;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L278"
            _checkNoGoroutine();
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx4), _ctx5:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel5:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel5;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L282"
            _checkNoGoroutine();
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L284"
            _cancel5();
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L285"
            _checkNoGoroutine();
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx5, (3600000000000000i64 : stdgo._internal.time.Time_duration.Duration)), __2:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel6:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel6;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L289"
            _checkNoGoroutine();
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L292"
            _cancel6();
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L293"
            _cancel1();
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx5), __3:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel7:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel7;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L296"
            _checkNoGoroutine();
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
                return;
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
                return;
            };
        };
    }

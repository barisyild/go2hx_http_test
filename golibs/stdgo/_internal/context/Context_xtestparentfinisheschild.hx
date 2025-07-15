package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function xTestParentFinishesChild(_t:stdgo._internal.context.Context_t_testingt.T_testingT):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _parent:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_parent), _cancelChild:stdgo._internal.context.Context_context.Context = __tmp__._0, _stop:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _valueChild = @:assignType (stdgo._internal.context.Context_withvalue.withValue(_parent, new stdgo.AnyInterface(("key" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : stdgo._internal.context.Context_context.Context);
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_valueChild, (3600000000000000i64 : stdgo._internal.time.Time_duration.Duration)), _timerChild:stdgo._internal.context.Context_context.Context = __tmp__._0, _stop:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _afterStop = @:assignType (stdgo._internal.context.Context_afterfunc.afterFunc(_parent, function():Void {}) : () -> Bool);
            {
                final __f__ = _afterStop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L57"
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _parent.done();
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _x = __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L59"
                                _t.errorf(("<-parent.Done() == %v want nothing (it should block)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.structType([])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([]))));
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = _cancelChild.done();
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _x = __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L61"
                                _t.errorf(("<-cancelChild.Done() == %v want nothing (it should block)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.structType([])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([]))));
                            };
                        };
                    } else if ({
                        if (__c__2 == null) {
                            __c__2 = _timerChild.done();
                        };
                        __c__2 != null && __c__2.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _x = __c__2.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L63"
                                _t.errorf(("<-timerChild.Done() == %v want nothing (it should block)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.structType([])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([]))));
                            };
                        };
                    } else if ({
                        if (__c__3 == null) {
                            __c__3 = _valueChild.done();
                        };
                        __c__3 != null && __c__3.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _x = __c__3.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L65"
                                _t.errorf(("<-valueChild.Done() == %v want nothing (it should block)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.structType([])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([]))));
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
__c__3.__reset__();
            };
            var _pc = (stdgo.Go.typeAssert(({
                final __t__ = _parent;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>);
            var _cc = (stdgo.Go.typeAssert(({
                final __t__ = _cancelChild;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>);
            var _tc = (stdgo.Go.typeAssert(({
                final __t__ = _timerChild;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_timerctxdott_timerctx.__type__stdgodot_internaldotcontextdotContext_t_timerctxdotT_timerCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>);
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L73"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var _ac:stdgo.Ref<stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx> = (null : stdgo.Ref<stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx>);
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L75"
            if ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children != null) for (_c => _ in (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children) {
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L76"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _c;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelerdott_canceler.__type__stdgodot_internaldotcontextdotContext_t_cancelerdotT_canceler)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_afterfuncctxdott_afterfuncctx.__type__stdgodot_internaldotcontextdotContext_t_afterfuncctxdotT_afterFuncCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx>), _1 : false };
                    }, _a = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _ac = _a;
                        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L78"
                        break;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L81"
            if ((((((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) != ((3 : stdgo.GoInt)) || !stdgo._internal.context.Context__contains._contains((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children, stdgo.Go.asInterface(_cc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))) : Bool) || !stdgo._internal.context.Context__contains._contains((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children, stdgo.Go.asInterface(_tc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_timerctxdott_timerctx.__type__stdgodot_internaldotcontextdotContext_t_timerctxdotT_timerCtx }))) : Bool) || ({
                final value = _ac;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L82"
                _t.errorf(("bad linkage: pc.children = %v, want %v, %v, and an afterFunc" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelerdott_canceler.__type__stdgodot_internaldotcontextdotContext_t_cancelerdotT_canceler }, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }))), new stdgo.AnyInterface(stdgo.Go.asInterface(_cc, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))), new stdgo.AnyInterface(stdgo.Go.asInterface(_tc, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_timerctxdott_timerctx.__type__stdgodot_internaldotcontextdotContext_t_timerctxdotT_timerCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_timerctxdott_timerctx.__type__stdgodot_internaldotcontextdotContext_t_timerctxdotT_timerCtx }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L85"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L87"
            {
                var __tmp__ = stdgo._internal.context.Context__parentcancelctx._parentCancelCtx((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context), _p:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((!_ok || (_p != _pc) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L88"
                    _t.errorf(("bad linkage: parentCancelCtx(cancelChild.Context) = %v, %v want %v, true" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_pc, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L90"
            {
                var __tmp__ = stdgo._internal.context.Context__parentcancelctx._parentCancelCtx((@:checkr _tc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx.context), _p:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((!_ok || (_p != _pc) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L91"
                    _t.errorf(("bad linkage: parentCancelCtx(timerChild.Context) = %v, %v want %v, true" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_pc, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L93"
            {
                var __tmp__ = stdgo._internal.context.Context__parentcancelctx._parentCancelCtx((@:checkr _ac ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx.context), _p:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((!_ok || (_p != _pc) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L94"
                    _t.errorf(("bad linkage: parentCancelCtx(afterChild.Context) = %v, %v want %v, true" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_pc, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L97"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L99"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L100"
            if (((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L101"
                _t.errorf(("pc.cancel didn\'t clear pc.children = %v" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelerdott_canceler.__type__stdgodot_internaldotcontextdotContext_t_cancelerdotT_canceler }, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L103"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            var _check = @:assignType (function(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):Void {
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L107"
                {
                    var __select__ = true;
                    var __c__0 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _ctx.done();
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {};
                            };
                        } else {
                            __select__ = false;
                            {
                                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L110"
                                _t.errorf(("<-%s.Done() blocked, but shouldn\'t have" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
                };
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L112"
                {
                    var _e = @:assignType (_ctx.err() : stdgo.Error);
                    if (({
                        final __t__ = _e;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) != (({
                        final __t__ = stdgo._internal.context.Context_canceled.canceled;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L113"
                        _t.errorf(("%s.Err() == %v want %v" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                            final __t__ = _e;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = stdgo._internal.context.Context_canceled.canceled;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                };
            } : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> Void);
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L116"
            _check(_parent, ("parent" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L117"
            _check(_cancelChild, ("cancelChild" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L118"
            _check(_valueChild, ("valueChild" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L119"
            _check(_timerChild, ("timerChild" : stdgo.GoString));
            var _precanceledChild = @:assignType (stdgo._internal.context.Context_withvalue.withValue(_parent, new stdgo.AnyInterface(("key" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L123"
            {
                var __select__ = true;
                var __c__0 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _precanceledChild.done();
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {};
                        };
                    } else {
                        __select__ = false;
                        {
                            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L126"
                            _t.errorf(("<-precanceledChild.Done() blocked, but shouldn\'t have" : stdgo.GoString));
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L128"
            {
                var _e = @:assignType (_precanceledChild.err() : stdgo.Error);
                if (({
                    final __t__ = _e;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) != (({
                    final __t__ = stdgo._internal.context.Context_canceled.canceled;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L129"
                    _t.errorf(("precanceledChild.Err() == %v want %v" : stdgo.GoString), ({
                        final __t__ = _e;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), ({
                        final __t__ = stdgo._internal.context.Context_canceled.canceled;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
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

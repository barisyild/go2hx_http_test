package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function xTestChildFinishesFirst(_t:stdgo._internal.context.Context_t_testingt.T_testingT):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _cancelable:stdgo._internal.context.Context_context.Context = __tmp__._0, _stop:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L136"
            if ((new stdgo.Slice<stdgo._internal.context.Context_context.Context>(2, 2, ...[stdgo._internal.context.Context_background.background(), _cancelable]) : stdgo.Slice<stdgo._internal.context.Context_context.Context>) != null) for (__0 => _parent in (new stdgo.Slice<stdgo._internal.context.Context_context.Context>(2, 2, ...[stdgo._internal.context.Context_background.background(), _cancelable]) : stdgo.Slice<stdgo._internal.context.Context_context.Context>)) {
                var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_parent), _child:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L139"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
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
                                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L141"
                                    _t.errorf(("<-parent.Done() == %v want nothing (it should block)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.structType([])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([]))));
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _child.done();
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _x = __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L143"
                                    _t.errorf(("<-child.Done() == %v want nothing (it should block)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.structType([])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([]))));
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
                };
                var _cc = (stdgo.Go.typeAssert(({
                    final __t__ = _child;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>);
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _parent;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>), _1 : false };
                }, _pc = __tmp__._0, _pcok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L149"
                {
                    var __tmp__ = stdgo._internal.context.Context__parentcancelctx._parentCancelCtx((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context), _p:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (((_ok != _pcok) || ((_ok && (_pc != _p) : Bool)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L150"
                        _t.errorf(("bad linkage: parentCancelCtx(cc.Context) = %v, %v want %v, %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_pc, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))), new stdgo.AnyInterface(_pcok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L153"
                if (_pcok) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L154"
                    (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L155"
                    if ((((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length != (1 : stdgo.GoInt)) || !stdgo._internal.context.Context__contains._contains((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children, stdgo.Go.asInterface(_cc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L156"
                        _t.errorf(("bad linkage: pc.children = %v, cc = %v" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelerdott_canceler.__type__stdgodot_internaldotcontextdotContext_t_cancelerdotT_canceler }, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }))), new stdgo.AnyInterface(stdgo.Go.asInterface(_cc, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L158"
                    (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                };
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L161"
                _cancel();
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L163"
                if (_pcok) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L164"
                    (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L165"
                    if (((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) != ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L166"
                        _t.errorf(("child\'s cancel didn\'t remove self from pc.children = %v" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelerdott_canceler.__type__stdgodot_internaldotcontextdotContext_t_cancelerdotT_canceler }, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L168"
                    (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                };
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L172"
                {
                    var __select__ = true;
                    var __c__0 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _child.done();
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
                                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L175"
                                _t.errorf(("<-child.Done() blocked, but shouldn\'t have" : stdgo.GoString));
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
                };
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L177"
                {
                    var _e = @:assignType (_child.err() : stdgo.Error);
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
                        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L178"
                        _t.errorf(("child.Err() == %v want %v" : stdgo.GoString), ({
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
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L182"
                {
                    var __select__ = true;
                    var __c__0 = null;
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
                                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L184"
                                    _t.errorf(("<-parent.Done() == %v want nothing (it should block)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.structType([])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([]))));
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
                };
                //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L187"
                {
                    var _e = @:assignType (_parent.err() : stdgo.Error);
                    if (_e != null) {
                        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L188"
                        _t.errorf(("parent.Err() == %v want nil" : stdgo.GoString), ({
                            final __t__ = _e;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
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

package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.context.Context.T_cancelCtx_asInterface) class T_cancelCtx_static_extension {
    @:keep
    @:tdfield
    static public function _cancel( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L532"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L533"
            throw new stdgo.AnyInterface(("context: internal error: missing cancel error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L535"
        if (_cause == null) {
            _cause = _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L538"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L539"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L540"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L541"
            return;
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cause = _cause;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.load(), stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) })) : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>), _1 : false };
        }, _d = __tmp__._0, __0 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L546"
        if (_d == null) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L547"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.store(new stdgo.AnyInterface(stdgo._internal.context.Context__closedchan._closedchan, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }))));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L549"
            if (_d != null) _d.__close__();
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L551"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children != null) for (_child => _ in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L553"
            _child._cancel(false, _err, _cause);
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children = (null : stdgo.GoMap<stdgo._internal.context.Context_t_canceler.T_canceler, stdgo._internal.context.Context_t__struct_0.T__struct_0>);
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L556"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L558"
        if (_removeFromParent) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L559"
            stdgo._internal.context.Context__removechild._removeChild((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context, stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })));
        };
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L525"
        return (stdgo._internal.context.Context__contextname._contextName((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context) + (".WithCancel" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _propagateCancel( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>, _parent:stdgo._internal.context.Context_context.Context, _child:stdgo._internal.context.Context_t_canceler.T_canceler):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = _c;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context = _parent;
        var _done = _parent.done();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L461"
        if (_done == null) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L462"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L465"
        {
            var __select__ = true;
            var __c__0 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = _done;
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L468"
                            _child._cancel(false, _parent.err(), stdgo._internal.context.Context_cause.cause(_parent));
                            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L469"
                            return;
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
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L473"
        {
            var __tmp__ = stdgo._internal.context.Context__parentcancelctx._parentCancelCtx(_parent), _p:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L475"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L476"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L478"
                    _child._cancel(false, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cause);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L480"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children == null) {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children = (({
                            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.context.Context_t_canceler.T_canceler, stdgo._internal.context.Context_t__struct_0.T__struct_0>();
                            x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelerdott_canceler.__type__stdgodot_internaldotcontextdotContext_t_cancelerdotT_canceler);
                            x.__defaultValue__ = () -> ({  } : stdgo._internal.context.Context_t__struct_0.T__struct_0);
                            {};
                            cast x;
                        } : stdgo.GoMap<stdgo._internal.context.Context_t_canceler.T_canceler, stdgo._internal.context.Context_t__struct_0.T__struct_0>) : stdgo.GoMap<stdgo._internal.context.Context_t_canceler.T_canceler, stdgo._internal.context.Context_t__struct_0.T__struct_0>);
                    };
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[_child] = ({  } : stdgo._internal.context.Context_t__struct_0.T__struct_0);
                };
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L485"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L486"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L489"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _parent;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_afterfuncerdott_afterfuncer.__type__stdgodot_internaldotcontextdotContext_t_afterfuncerdotT_afterFuncer) : stdgo._internal.context.Context_t_afterfuncer.T_afterFuncer), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.context.Context_t_afterfuncer.T_afterFuncer), _1 : false };
            }, _a = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L491"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                var _stop = @:assignType (_a.afterFunc(function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L493"
                    _child._cancel(false, _parent.err(), stdgo._internal.context.Context_cause.cause(_parent));
                }) : () -> Bool);
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context = stdgo.Go.asInterface(({ context : _parent, _stop : _stop } : stdgo._internal.context.Context_t_stopctx.T_stopCtx), _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_stopctxdott_stopctx.__type__stdgodot_internaldotcontextdotContext_t_stopctxdotT_stopCtx);
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L499"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L500"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L503"
        stdgo._internal.context.Context__goroutines._goroutines.add((1 : stdgo.GoInt32));
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L504"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L505"
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
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/context/context.go#L507"
                                    _child._cancel(false, _parent.err(), stdgo._internal.context.Context_cause.cause(_parent));
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
                                __c__1.__get__();
                                {};
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
                };
            };
            a();
        }));
    }
    @:keep
    @:tdfield
    static public function err( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L449"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L451"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L452"
        return _err;
    }
    @:keep
    @:tdfield
    static public function done( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>):stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0> {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _d = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.load() : stdgo.AnyInterface);
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L435"
            if (({
                final value = _d;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L436"
                return (stdgo.Go.typeAssert(_d, stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) })) : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>);
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L438"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            _d = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.load();
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L441"
            if (({
                final value = _d;
                (value == null || (value : Dynamic).__nil__);
            })) {
                _d = new stdgo.AnyInterface((new stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>(0, () -> ({  } : stdgo._internal.context.Context_t__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) })));
                //"file:///Users/o/.go/go1.21.3/src/context/context.go#L443"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.store(_d);
            };
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L445"
            {
                final __ret__:stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0> = (stdgo.Go.typeAssert(_d, stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) })) : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>);
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
                return (null : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>);
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
                return (null : stdgo.Chan<stdgo._internal.context.Context_t__struct_0.T__struct_0>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function value( _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        @:recv var _c:stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L427"
        if (_key == (new stdgo.AnyInterface(stdgo.Go.pointer(stdgo._internal.context.Context__cancelctxkey._cancelCtxKey).value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
            //"file:///Users/o/.go/go1.21.3/src/context/context.go#L428"
            return new stdgo.AnyInterface(stdgo.Go.asInterface(_c, _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context.go#L430"
        return stdgo._internal.context.Context__value._value((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context, _key);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_cancelctx.T_cancelCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}

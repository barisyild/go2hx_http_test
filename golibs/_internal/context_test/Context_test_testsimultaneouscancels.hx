package _internal.context_test;
function testSimultaneousCancels(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _root:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            var _m = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.context.Context_context.Context, stdgo._internal.context.Context_cancelfunc.CancelFunc>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext);
                x.__defaultValue__ = () -> (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
                x.set(_root, _cancel);
                cast x;
            } : stdgo.GoMap<stdgo._internal.context.Context_context.Context, stdgo._internal.context.Context_cancelfunc.CancelFunc>);
            var _q = (new stdgo.Slice<stdgo._internal.context.Context_context.Context>(1, 1, ...[_root]) : stdgo.Slice<stdgo._internal.context.Context_context.Context>);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L330"
            while (((_q.length != (0 : stdgo.GoInt)) && ((_m.length) < (100 : stdgo.GoInt) : Bool) : Bool)) {
                var _parent = @:assignType (_q[(0 : stdgo.GoInt)] : stdgo._internal.context.Context_context.Context);
                _q = (_q.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.context.Context_context.Context>);
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L333"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (4 : stdgo.GoInt) : Bool)) {
                        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_parent), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
_m[_ctx] = _cancel;
_q = (_q.__append__(_ctx) : stdgo.Slice<stdgo._internal.context.Context_context.Context>);
                        _i++;
                    };
                };
            };
            var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L341"
            _wg.add((_m.length));
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L342"
            if (_m != null) for (__0 => _cancel in _m) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L343"
                stdgo.Go.routine(() -> ({
                    var a = function(_cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc):Void {
                        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L344"
                        _cancel();
                        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L345"
                        _wg.done();
                    };
                    a(_cancel);
                }));
            };
            var _d = @:assignType (_internal.context_test.Context_test__quiescent._quiescent(_t) : stdgo._internal.time.Time_duration.Duration);
            var _stuck = (new stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>(0, () -> ({  } : _internal.context_test.Context_test_t__struct_17.T__struct_17)) : stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>);
            var _timer = stdgo._internal.time.Time_afterfunc.afterFunc(_d, function():Void {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L351"
                if (_stuck != null) _stuck.__close__();
            });
            {
                final __f__ = _timer.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L355"
            if (_m != null) for (_ctx => _ in _m) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L356"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
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
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _stuck;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10240 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                    var _n = @:assignType (stdgo._internal.runtime.Runtime_stack.stack(_buf, true) : stdgo.GoInt);
                                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L361"
                                    _t.fatalf(("timed out after %v waiting for <-ctx.Done(); stacks:\n%s" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_d, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                                };
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
                };
            };
            var _done = (new stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>(0, () -> ({  } : _internal.context_test.Context_test_t__struct_17.T__struct_17)) : stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L366"
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L367"
                    _wg.wait_();
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L368"
                    if (_done != null) _done.__close__();
                };
                a();
            }));
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L370"
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
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
                            {};
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = _stuck;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10240 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                var _n = @:assignType (stdgo._internal.runtime.Runtime_stack.stack(_buf, true) : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L375"
                                _t.fatalf(("timed out after %v waiting for cancel functions; stacks:\n%s" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_d, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
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

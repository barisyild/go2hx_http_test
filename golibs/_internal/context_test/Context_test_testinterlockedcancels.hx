package _internal.context_test;
function testInterlockedCancels(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _parent:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelParent:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_parent), _child:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelChild:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L382"
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L383"
                    _parent.done().__get__();
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L384"
                    _cancelChild();
                };
                a();
            }));
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L386"
            _cancelParent();
            var _d = @:assignType (_internal.context_test.Context_test__quiescent._quiescent(_t) : stdgo._internal.time.Time_duration.Duration);
            var _timer = stdgo._internal.time.Time_newtimer.newTimer(_d);
            {
                final __f__ = _timer.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L390"
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
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
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _timer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10240 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                var _n = @:assignType (stdgo._internal.runtime.Runtime_stack.stack(_buf, true) : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L395"
                                _t.fatalf(("timed out after %v waiting for child.Done(); stacks:\n%s" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_d, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
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

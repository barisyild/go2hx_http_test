package _internal.context_test;
function _benchmarkWithTimeout(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _concurrentContexts:stdgo.GoInt):Void {
        var _gomaxprocs = @:assignType (stdgo._internal.runtime.Runtime_gomaxprocs.gOMAXPROCS((0 : stdgo.GoInt)) : stdgo.GoInt);
        var _perPContexts = @:assignType (_concurrentContexts / _gomaxprocs : stdgo.GoInt);
        var _root = @:assignType (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_context.Context);
        var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
        var _ccf = (new stdgo.Slice<stdgo.Slice<stdgo._internal.context.Context_cancelfunc.CancelFunc>>((_gomaxprocs : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo._internal.context.Context_cancelfunc.CancelFunc>>);
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L57"
        if (_ccf != null) for (_i => _ in _ccf) {
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L58"
            _wg.add((1 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L59"
            stdgo.Go.routine(() -> ({
                var a = function(_i:stdgo.GoInt):Void {
                    var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                    try {
                        {
                            final __f__ = _wg.done;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        var _cf = (new stdgo.Slice<stdgo._internal.context.Context_cancelfunc.CancelFunc>((_perPContexts : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.context.Context_cancelfunc.CancelFunc>);
                        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L62"
                        if (_cf != null) for (_j => _ in _cf) {
                            {
                                var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_root, (3600000000000i64 : stdgo._internal.time.Time_duration.Duration));
                                _cf[(_j : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
                            };
                        };
                        _ccf[(_i : stdgo.GoInt)] = _cf;
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
                };
                a(_i);
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L68"
        _wg.wait_();
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L70"
        _b.resetTimer();
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L71"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _wcf = (new stdgo.Slice<stdgo._internal.context.Context_cancelfunc.CancelFunc>((10 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.context.Context_cancelfunc.CancelFunc>);
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L73"
            while (_pb.next()) {
                //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L74"
                if (_wcf != null) for (_i => _ in _wcf) {
                    {
                        var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_root, (3600000000000i64 : stdgo._internal.time.Time_duration.Duration));
                        _wcf[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L77"
                if (_wcf != null) for (__0 => _f in _wcf) {
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L78"
                    _f();
                };
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L82"
        _b.stopTimer();
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L84"
        if (_ccf != null) for (__0 => _cf in _ccf) {
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L85"
            if (_cf != null) for (__1 => _f in _cf) {
                //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L86"
                _f();
            };
        };
    }

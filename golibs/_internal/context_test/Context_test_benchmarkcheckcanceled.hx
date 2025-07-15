package _internal.context_test;
function benchmarkCheckCanceled(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L126"
        _cancel();
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L127"
        _b.run(("Err" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L128"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L129"
                    _ctx.err();
                    _i++;
                };
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L132"
        _b.run(("Done" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L133"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L134"
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
                                {};
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
                    };
                    _i++;
                };
            };
        });
    }

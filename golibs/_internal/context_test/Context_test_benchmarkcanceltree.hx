package _internal.context_test;
function benchmarkCancelTree(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _depths = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (10 : stdgo.GoInt), (100 : stdgo.GoInt), (1000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L93"
        if (_depths != null) for (__0 => _d in _depths) {
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L94"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("depth=%d" : stdgo.GoString), new stdgo.AnyInterface(_d, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L95"
                _b.run(("Root=Background" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L96"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L97"
                            _internal.context_test.Context_test__buildcontexttree._buildContextTree(stdgo._internal.context.Context_background.background(), _d);
                            _i++;
                        };
                    };
                });
                //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L100"
                _b.run(("Root=OpenCanceler" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L101"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L103"
                            _internal.context_test.Context_test__buildcontexttree._buildContextTree(_ctx, _d);
//"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L104"
                            _cancel();
                            _i++;
                        };
                    };
                });
                //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L107"
                _b.run(("Root=ClosedCanceler" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L108"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L110"
                            _cancel();
//"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L111"
                            _internal.context_test.Context_test__buildcontexttree._buildContextTree(_ctx, _d);
                            _i++;
                        };
                    };
                });
            });
        };
    }

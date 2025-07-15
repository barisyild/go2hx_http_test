package _internal.context_test;
function benchmarkDeepValueNewGoRoutine(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L157"
        if ((new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) != null) for (__0 => _depth in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _ctx = @:assignType (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L159"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _depth : Bool)) {
                    _ctx = stdgo._internal.context.Context_withvalue.withValue(_ctx, new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L163"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("depth=%d" : stdgo.GoString), new stdgo.AnyInterface(_depth, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L164"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
//"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L166"
                        _wg.add((1 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L167"
                        stdgo.Go.routine(() -> ({
                            var a = function():Void {
                                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                                try {
                                    {
                                        final __f__ = _wg.done;
                                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L169"
                                    _ctx.value(new stdgo.AnyInterface((-1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
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
                            a();
                        }));
//"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L171"
                        _wg.wait_();
                        _i++;
                    };
                };
            });
        };
    }

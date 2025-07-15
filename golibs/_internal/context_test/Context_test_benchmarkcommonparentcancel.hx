package _internal.context_test;
function benchmarkCommonParentCancel(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _root = @:assignType (stdgo._internal.context.Context_withvalue.withValue(stdgo._internal.context.Context_background.background(), new stdgo.AnyInterface(("key" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : stdgo._internal.context.Context_context.Context);
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_root), _shared:stdgo._internal.context.Context_context.Context = __tmp__._0, _sharedcancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _sharedcancel;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L21"
            _b.resetTimer();
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L22"
            _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
                var _x = @:assignType (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L24"
                while (_pb.next()) {
                    var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_shared), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L26"
                    if ((stdgo.Go.typeAssert(_ctx.value(new stdgo.AnyInterface(("key" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString) != (("value" : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L27"
                        _b.fatal(new stdgo.AnyInterface(("should not be reached" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L29"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (100 : stdgo.GoInt) : Bool)) {
                            _x = (_x / ((_x + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                            _i++;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L32"
                    _cancel();
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L33"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (100 : stdgo.GoInt) : Bool)) {
                            _x = (_x / ((_x + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                            _i++;
                        };
                    };
                };
            });
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

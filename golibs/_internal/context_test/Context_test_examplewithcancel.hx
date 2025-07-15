package _internal.context_test;
function exampleWithCancel():Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _gen = function(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Chan<stdgo.GoInt> {
                var _dst = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                var _n = @:assignType (1 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L30"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L31"
                        while (true) {
                            //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L32"
                            {
                                var __select__ = true;
                                var __c__0 = null;
var __c__1 = _dst;
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
                                            {
                                                //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L34"
                                                return;
                                            };
                                        };
                                    } else if (_dst != null && __c__1.__isSend__(true)) {
                                        __select__ = false;
                                        {
                                            __c__1.__send__(_n);
                                            {
                                                //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L36"
                                                _n++;
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
                    };
                    a();
                }));
                //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L40"
                return _dst;
            };
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L46"
            for (_n in _gen(_ctx)) {
                //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L47"
                stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L48"
                if (_n == ((5 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L49"
                    break;
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

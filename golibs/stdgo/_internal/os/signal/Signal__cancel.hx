package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
function _cancel(_sigs:stdgo.Slice<stdgo._internal.os.Os_signal.Signal>, _action:stdgo.GoInt -> Void):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L52"
            stdgo._internal.os.signal.Signal__handlers._handlers.lock();
            {
                final __f__ = stdgo._internal.os.signal.Signal__handlers._handlers.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _remove = @:assignType (function(_n:stdgo.GoInt):Void {
                var _zerohandler:stdgo._internal.os.signal.Signal_t_handler.T_handler = ({} : stdgo._internal.os.signal.Signal_t_handler.T_handler);
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L58"
                if (stdgo._internal.os.signal.Signal__handlers._handlers._m != null) for (_c => _h in stdgo._internal.os.signal.Signal__handlers._handlers._m) {
                    //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L59"
                    if (_h._want(_n)) {
                        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L60"
                        stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)]--;
                        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L61"
                        _h._clear(_n);
                        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L62"
                        if (new stdgo.AnyInterface((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mask, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, 3))) == new stdgo.AnyInterface(_zerohandler._mask, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, 3)))) {
                            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L63"
                            if (stdgo._internal.os.signal.Signal__handlers._handlers._m != null) stdgo._internal.os.signal.Signal__handlers._handlers._m.__remove__(_c);
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L68"
                _action(_n);
            } : stdgo.GoInt -> Void);
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L71"
            if ((_sigs.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L72"
                {
                    var _n = @:assignType (0 : stdgo.GoInt);
                    while ((_n < (65 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L73"
                        _remove(_n);
                        _n++;
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L76"
                if (_sigs != null) for (__0 => _s in _sigs) {
                    //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L77"
                    _remove(stdgo._internal.os.signal.Signal__signum._signum(_s));
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

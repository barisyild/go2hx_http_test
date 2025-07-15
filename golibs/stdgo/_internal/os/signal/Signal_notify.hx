package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
function notify(_c:stdgo.Chan<stdgo._internal.os.Os_signal.Signal>, _sig:haxe.Rest<stdgo._internal.os.Os_signal.Signal>):Void {
        var _sig = new stdgo.Slice<stdgo._internal.os.Os_signal.Signal>(_sig.length, 0, ..._sig);
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L122"
            if (_c == null) {
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L123"
                throw new stdgo.AnyInterface(("os/signal: Notify using nil channel" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L126"
            stdgo._internal.os.signal.Signal__handlers._handlers.lock();
            {
                final __f__ = stdgo._internal.os.signal.Signal__handlers._handlers.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _h = (stdgo._internal.os.signal.Signal__handlers._handlers._m[_c] ?? (null : stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>));
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L130"
            if (({
                final value = _h;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L131"
                if (stdgo._internal.os.signal.Signal__handlers._handlers._m == null) {
                    stdgo._internal.os.signal.Signal__handlers._handlers._m = ({
                        final x = new stdgo.GoMap.GoChanMap<stdgo.Chan<stdgo._internal.os.Os_signal.Signal>, stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>>();
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Chan<stdgo._internal.os.Os_signal.Signal>, stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>>);
                };
                _h = (stdgo.Go.setRef(({} : stdgo._internal.os.signal.Signal_t_handler.T_handler), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotsignaldotsignal_t_handlerdott_handler.__type__stdgodot_internaldotosdotsignaldotSignal_t_handlerdotT_handler })) : stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>);
                stdgo._internal.os.signal.Signal__handlers._handlers._m[_c] = _h;
            };
            var _add = @:assignType (function(_n:stdgo.GoInt):Void {
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L139"
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L140"
                    return;
                };
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L142"
                if (!_h._want(_n)) {
                    //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L143"
                    _h._set(_n);
                    //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L144"
                    if (stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)] == ((0i64 : stdgo.GoInt64))) {
                        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L145"
                        stdgo._internal.os.signal.Signal__enablesignal._enableSignal(_n);
                        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L149"
                        stdgo._internal.os.signal.Signal__watchsignallooponce._watchSignalLoopOnce.do_(function():Void {
                            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L150"
                            if (stdgo._internal.os.signal.Signal__watchsignalloop._watchSignalLoop != null) {
                                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L151"
                                {
                                    {};
                                    stdgo.Go.routine(() -> stdgo._internal.os.signal.Signal__watchsignalloop._watchSignalLoop());
                                };
                            };
                        });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L155"
                    stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)]++;
                };
            } : stdgo.GoInt -> Void);
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L159"
            if ((_sig.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L160"
                {
                    var _n = @:assignType (0 : stdgo.GoInt);
                    while ((_n < (65 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L161"
                        _add(_n);
                        _n++;
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L164"
                if (_sig != null) for (__0 => _s in _sig) {
                    //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L165"
                    _add(stdgo._internal.os.signal.Signal__signum._signum(_s));
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

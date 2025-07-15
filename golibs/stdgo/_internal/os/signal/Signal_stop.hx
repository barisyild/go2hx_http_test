package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
function stop(_c:stdgo.Chan<stdgo._internal.os.Os_signal.Signal>):Void {
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L181"
        stdgo._internal.os.signal.Signal__handlers._handlers.lock();
        var _h = (stdgo._internal.os.signal.Signal__handlers._handlers._m[_c] ?? (null : stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>));
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L184"
        if (({
            final value = _h;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L185"
            stdgo._internal.os.signal.Signal__handlers._handlers.unlock();
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L186"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L188"
        if (stdgo._internal.os.signal.Signal__handlers._handlers._m != null) stdgo._internal.os.signal.Signal__handlers._handlers._m.__remove__(_c);
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L190"
        {
            var _n = @:assignType (0 : stdgo.GoInt);
            while ((_n < (65 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L191"
                if (_h._want(_n)) {
                    //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L192"
                    stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)]--;
                    //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L193"
                    if (stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)] == ((0i64 : stdgo.GoInt64))) {
                        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L194"
                        stdgo._internal.os.signal.Signal__disablesignal._disableSignal(_n);
                    };
                };
                _n++;
            };
        };
        stdgo._internal.os.signal.Signal__handlers._handlers._stopping = (stdgo._internal.os.signal.Signal__handlers._handlers._stopping.__append__((new stdgo._internal.os.signal.Signal_t_stopping.T_stopping(_c, _h) : stdgo._internal.os.signal.Signal_t_stopping.T_stopping)) : stdgo.Slice<stdgo._internal.os.signal.Signal_t_stopping.T_stopping>);
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L212"
        stdgo._internal.os.signal.Signal__handlers._handlers.unlock();
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L214"
        stdgo._internal.os.signal.Signal__signalwaituntilidle._signalWaitUntilIdle();
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L216"
        stdgo._internal.os.signal.Signal__handlers._handlers.lock();
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L218"
        if (stdgo._internal.os.signal.Signal__handlers._handlers._stopping != null) for (_i => _s in stdgo._internal.os.signal.Signal__handlers._handlers._stopping) {
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L219"
            if (_s._c == (_c)) {
                stdgo._internal.os.signal.Signal__handlers._handlers._stopping = ((stdgo._internal.os.signal.Signal__handlers._handlers._stopping.__slice__(0, _i) : stdgo.Slice<stdgo._internal.os.signal.Signal_t_stopping.T_stopping>).__append__(...((stdgo._internal.os.signal.Signal__handlers._handlers._stopping.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.os.signal.Signal_t_stopping.T_stopping>) : Array<stdgo._internal.os.signal.Signal_t_stopping.T_stopping>)) : stdgo.Slice<stdgo._internal.os.signal.Signal_t_stopping.T_stopping>);
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L221"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L225"
        stdgo._internal.os.signal.Signal__handlers._handlers.unlock();
    }

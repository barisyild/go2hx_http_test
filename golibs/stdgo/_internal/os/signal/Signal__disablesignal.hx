package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
function _disableSignal(_sig:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal_unix.go#L53"
        stdgo._internal.os.signal.Signal__signal_disable._signal_disable((_sig : stdgo.GoUInt32));
    }

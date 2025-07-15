package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
function _enableSignal(_sig:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal_unix.go#L49"
        stdgo._internal.os.signal.Signal__signal_enable._signal_enable((_sig : stdgo.GoUInt32));
    }

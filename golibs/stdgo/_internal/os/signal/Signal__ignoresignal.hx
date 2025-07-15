package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
function _ignoreSignal(_sig:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal_unix.go#L57"
        stdgo._internal.os.signal.Signal__signal_ignore._signal_ignore((_sig : stdgo.GoUInt32));
    }

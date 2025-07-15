package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
function _loop():Void {
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal_unix.go#L22"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/os/signal/signal_unix.go#L23"
            stdgo._internal.os.signal.Signal__process._process(stdgo.Go.asInterface((stdgo._internal.os.signal.Signal__signal_recv._signal_recv() : stdgo._internal.syscall.Syscall_signal.Signal), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_signaldotsignal.__type__stdgodot_internaldotsyscalldotSyscall_signaldotSignal));
        };
    }

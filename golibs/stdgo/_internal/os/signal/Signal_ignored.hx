package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
function ignored(_sig:stdgo._internal.os.Os_signal.Signal):Bool {
        var _sn = @:assignType (stdgo._internal.os.signal.Signal__signum._signum(_sig) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal.go#L93"
        return ((_sn >= (0 : stdgo.GoInt) : Bool) && stdgo._internal.os.signal.Signal__signalignored._signalIgnored(_sn) : Bool);
    }

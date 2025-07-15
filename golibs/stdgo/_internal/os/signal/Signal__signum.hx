package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
function _signum(_sig:stdgo._internal.os.Os_signal.Signal):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/os/signal/signal_unix.go#L36"
        {
            final __type__ = _sig;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotosdotos_signaldotsignal.__type__stdgodot_internaldotosdotOs_signaldotSignal)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_signaldotsignal.__type__stdgodot_internaldotsyscalldotSyscall_signaldotSignal)) {
                var _sig:stdgo._internal.syscall.Syscall_signal.Signal = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal) : __type__.__underlying__().value);
                var _i = @:assignType (_sig : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal_unix.go#L39"
                if (((_i < (0 : stdgo.GoInt) : Bool) || (_i >= (65 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/os/signal/signal_unix.go#L40"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal_unix.go#L42"
                return _i;
            } else {
                var _sig:stdgo._internal.os.Os_signal.Signal = __type__ == null ? (null : stdgo._internal.os.Os_signal.Signal) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/os/signal/signal_unix.go#L44"
                return (-1 : stdgo.GoInt);
            };
        };
    }

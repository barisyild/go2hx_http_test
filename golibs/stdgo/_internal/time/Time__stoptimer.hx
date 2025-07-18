package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _stopTimer(_0:stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>):Bool {
        final t = _0;
        if (t._pp != new stdgo.GoUIntptr(0)) {
            final timer:haxe.Timer = t._pp.toDynamic();
            timer.stop();
        };
        final wasActive = t._status == 1;
        t._status = 0;
        return wasActive;
    }

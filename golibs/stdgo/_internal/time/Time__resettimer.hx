package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _resetTimer(_0:stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>, _1:stdgo.GoInt64):Bool {
        final t = _0;
        final when = _1;
        final wasActive = t._status == 1;
        return wasActive;
    }

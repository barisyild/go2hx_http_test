package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _interrupt():Void {
        //"file:///Users/o/.go/go1.21.3/src/time/sys_unix.go#L22"
        if (true) {
            //"file:///Users/o/.go/go1.21.3/src/time/sys_unix.go#L23"
            stdgo._internal.syscall.Syscall_kill.kill(stdgo._internal.syscall.Syscall_getpid.getpid(), (1 : stdgo._internal.syscall.Syscall_signal.Signal));
        };
    }

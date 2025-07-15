package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _closefd(_fd:stdgo.GoUIntptr):Void {
        //"file:///Users/o/.go/go1.21.3/src/time/sys_unix.go#L40"
        stdgo._internal.syscall.Syscall_close.close((_fd : stdgo.GoInt));
    }

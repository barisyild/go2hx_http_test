package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _read(_fd:stdgo.GoUIntptr, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/time/sys_unix.go#L36"
        return stdgo._internal.syscall.Syscall_read.read((_fd : stdgo.GoInt), _buf);
    }

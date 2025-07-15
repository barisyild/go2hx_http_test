package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _open(_name:stdgo.GoString):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.syscall.Syscall_open.open(_name?.__copy__(), (0 : stdgo.GoInt), (0u32 : stdgo.GoUInt32)), _fd:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/time/sys_unix.go#L29"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/time/sys_unix.go#L30"
            return { _0 : (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/sys_unix.go#L32"
        return { _0 : (new stdgo.GoUIntptr(_fd) : stdgo.GoUIntptr), _1 : (null : stdgo.Error) };
    }

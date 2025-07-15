package stdgo._internal.internal.syscall.unix;
function fcntl(_fd:stdgo.GoInt, _cmd:stdgo.GoInt, _arg:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/internal/syscall/unix/fcntl_js.go#L12"
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
    }

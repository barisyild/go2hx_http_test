package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
var closeFunc : stdgo.GoInt -> stdgo.Error = stdgo._internal.syscall.Syscall_close.close;

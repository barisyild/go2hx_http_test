package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
var acceptFunc : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = stdgo._internal.syscall.Syscall_accept.accept;

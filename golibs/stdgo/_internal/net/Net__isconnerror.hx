package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
function _isConnError(_err:stdgo.Error):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/error_unix.go#L12"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) : stdgo._internal.syscall.Syscall_errno.Errno), _1 : true };
            } catch(__exception__) {
                { _0 : (new stdgo.GoUIntptr(0) : stdgo._internal.syscall.Syscall_errno.Errno), _1 : false };
            }, _se = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/error_unix.go#L13"
                return ((_se == (new stdgo.GoUIntptr(104) : stdgo._internal.syscall.Syscall_errno.Errno)) || (_se == (new stdgo.GoUIntptr(103) : stdgo._internal.syscall.Syscall_errno.Errno)) : Bool);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/error_unix.go#L15"
        return false;
    }

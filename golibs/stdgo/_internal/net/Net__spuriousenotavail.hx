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
function _spuriousENOTAVAIL(_err:stdgo.Error):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L140"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), _1 : false };
            }, _op = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = (@:checkr _op ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L143"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_syscallerrordotsyscallerror.__type__stdgodot_internaldotosdotOs_syscallerrordotSyscallError })) : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>), _1 : false };
            }, _sys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = (@:checkr _sys ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L146"
        return ({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo.GoUIntptr(99) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno)));
    }

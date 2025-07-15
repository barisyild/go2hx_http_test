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
function _sockaddrToUnixpacket(_sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):stdgo._internal.net.Net_addr.Addr {
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L67"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L68"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ name : (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__(), net : ("unixpacket" : stdgo.GoString) } : stdgo._internal.net.Net_unixaddr.UnixAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })) : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L70"
        return (null : stdgo._internal.net.Net_addr.Addr);
    }

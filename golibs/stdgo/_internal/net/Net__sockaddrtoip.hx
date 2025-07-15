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
function _sockaddrToIP(_sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):stdgo._internal.net.Net_addr.Addr {
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L15"
        {
            final __type__ = _sa;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 }))) {
                var _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L17"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ iP : ((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.net.Net_ipaddr.IPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 }))) {
                var _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L19"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ iP : ((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), zone : stdgo._internal.net.Net__zonecache._zoneCache._name(((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zoneId : stdgo.GoInt))?.__copy__() } : stdgo._internal.net.Net_ipaddr.IPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L21"
        return (null : stdgo._internal.net.Net_addr.Addr);
    }

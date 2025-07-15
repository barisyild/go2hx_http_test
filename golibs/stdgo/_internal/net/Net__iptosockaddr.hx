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
function _ipToSockaddr(_family:stdgo.GoInt, _ip:stdgo._internal.net.Net_ip.IP, _port:stdgo.GoInt, _zone:stdgo.GoString):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L184"
        {
            final __value__ = _family;
            if (__value__ == ((2 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.net.Net__iptosockaddrinet4._ipToSockaddrInet4(_ip, _port), _sa:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L187"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L188"
                    return { _0 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L190"
                return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 }))), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.net.Net__iptosockaddrinet6._ipToSockaddrInet6(_ip, _port, _zone?.__copy__()), _sa:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L193"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L194"
                    return { _0 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L196"
                return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 }))), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L198"
        return { _0 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("invalid address family" : stdgo.GoString), addr : (_ip.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
    }

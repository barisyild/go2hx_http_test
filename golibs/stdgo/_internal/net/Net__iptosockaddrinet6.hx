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
function _ipToSockaddrInet6(_ip:stdgo._internal.net.Net_ip.IP, _port:stdgo.GoInt, _zone:stdgo.GoString):{ var _0 : stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L169"
        if (((_ip.length == (0 : stdgo.GoInt)) || _ip.equal(stdgo._internal.net.Net_ipv4zero.iPv4zero) : Bool)) {
            _ip = stdgo._internal.net.Net_ipv6zero.iPv6zero;
        };
        var _ip6 = @:assignType (_ip.to16() : stdgo._internal.net.Net_ip.IP);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L175"
        if (_ip6 == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L176"
            return { _0 : (new stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6() : stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("non-IPv6 address" : stdgo.GoString), addr : (_ip.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
        };
        var _sa = @:assignType ({ port : _port, zoneId : (stdgo._internal.net.Net__zonecache._zoneCache._index(_zone?.__copy__()) : stdgo.GoUInt32) } : stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L179"
        (_sa.addr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_ip6);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L180"
        return { _0 : _sa?.__copy__(), _1 : (null : stdgo.Error) };
    }

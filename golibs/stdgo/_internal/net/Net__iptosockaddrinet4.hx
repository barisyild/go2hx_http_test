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
function _ipToSockaddrInet4(_ip:stdgo._internal.net.Net_ip.IP, _port:stdgo.GoInt):{ var _0 : stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L146"
        if ((_ip.length) == ((0 : stdgo.GoInt))) {
            _ip = stdgo._internal.net.Net_ipv4zero.iPv4zero;
        };
        var _ip4 = @:assignType (_ip.to4() : stdgo._internal.net.Net_ip.IP);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L150"
        if (_ip4 == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L151"
            return { _0 : (new stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4() : stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("non-IPv4 address" : stdgo.GoString), addr : (_ip.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
        };
        var _sa = @:assignType ({ port : _port } : stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L154"
        (_sa.addr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_ip4);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L155"
        return { _0 : _sa?.__copy__(), _1 : (null : stdgo.Error) };
    }

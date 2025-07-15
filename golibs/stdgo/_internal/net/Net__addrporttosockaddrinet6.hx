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
function _addrPortToSockaddrInet6(_ap:stdgo._internal.net.netip.Netip_addrport.AddrPort):{ var _0 : stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6; var _1 : stdgo.Error; } {
        var _addr = @:assignType (_ap.addr()?.__copy__() : stdgo._internal.net.netip.Netip_addr.Addr);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L223"
        if (!_addr.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L224"
            return { _0 : (new stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6() : stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("non-IPv6 address" : stdgo.GoString), addr : (_addr.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
        };
        var _sa = @:assignType ({ addr : _addr.as16()?.__copy__(), port : (_ap.port() : stdgo.GoInt), zoneId : (stdgo._internal.net.Net__zonecache._zoneCache._index(_addr.zone()?.__copy__()) : stdgo.GoUInt32) } : stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L231"
        return { _0 : _sa?.__copy__(), _1 : (null : stdgo.Error) };
    }

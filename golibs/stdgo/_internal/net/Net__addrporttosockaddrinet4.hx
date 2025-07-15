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
function _addrPortToSockaddrInet4(_ap:stdgo._internal.net.netip.Netip_addrport.AddrPort):{ var _0 : stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4; var _1 : stdgo.Error; } {
        var _addr = @:assignType (_ap.addr()?.__copy__() : stdgo._internal.net.netip.Netip_addr.Addr);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L205"
        if (!_addr.is4()) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L206"
            return { _0 : (new stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4() : stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("non-IPv4 address" : stdgo.GoString), addr : (_addr.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
        };
        var _sa = @:assignType ({ addr : _addr.as4()?.__copy__(), port : (_ap.port() : stdgo.GoInt) } : stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L212"
        return { _0 : _sa?.__copy__(), _1 : (null : stdgo.Error) };
    }

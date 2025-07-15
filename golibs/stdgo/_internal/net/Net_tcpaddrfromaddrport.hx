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
function tCPAddrFromAddrPort(_addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr> {
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L103"
        return (stdgo.Go.setRef(({ iP : _addr.addr().asSlice(), zone : _addr.addr().zone()?.__copy__(), port : (_addr.port() : stdgo.GoInt) } : stdgo._internal.net.Net_tcpaddr.TCPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })) : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>);
    }

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
function _classifyScope(_ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo._internal.net.Net_t_scope.T_scope {
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L317"
        if ((_ip.isLoopback() || _ip.isLinkLocalUnicast() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L318"
            return (2 : stdgo._internal.net.Net_t_scope.T_scope);
        };
        var _ipv6 = @:assignType (_ip.is6() && !_ip.is4In6() : Bool);
        var _ipv6AsBytes = _ip.as16()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L322"
        if ((_ipv6 && _ip.isMulticast() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L323"
            return ((_ipv6AsBytes[(1 : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.net.Net_t_scope.T_scope);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L327"
        if (((_ipv6 && _ipv6AsBytes[(0 : stdgo.GoInt)] == ((254 : stdgo.GoUInt8)) : Bool) && ((_ipv6AsBytes[(1 : stdgo.GoInt)] & (192 : stdgo.GoUInt8) : stdgo.GoUInt8) == (192 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L328"
            return (5 : stdgo._internal.net.Net_t_scope.T_scope);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L330"
        return (14 : stdgo._internal.net.Net_t_scope.T_scope);
    }

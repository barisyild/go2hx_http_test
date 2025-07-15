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
function _loopbackIP(_net:stdgo.GoString):stdgo._internal.net.Net_ip.IP {
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L311"
        if (((_net != (stdgo.Go.str() : stdgo.GoString)) && (_net[((_net.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (54 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L312"
            return stdgo._internal.net.Net_ipv6loopback.iPv6loopback;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L314"
        return (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(127 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo._internal.net.Net_ip.IP);
    }

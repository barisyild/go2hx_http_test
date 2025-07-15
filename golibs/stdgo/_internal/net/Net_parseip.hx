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
function parseIP(_s:stdgo.GoString):stdgo._internal.net.Net_ip.IP {
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L495"
        {
            var __tmp__ = stdgo._internal.net.Net__parseip._parseIP(_s?.__copy__()), _addr:stdgo.GoArray<stdgo.GoUInt8> = __tmp__._0, _valid:Bool = __tmp__._1;
            if (_valid) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L496"
                return ((_addr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.net.Net_ip.IP);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L498"
        return null;
    }

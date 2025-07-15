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
function _sortByRFC6724(_addrs:stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L15"
        if (((_addrs.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L16"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L18"
        stdgo._internal.net.Net__sortbyrfc6724withsrcs._sortByRFC6724withSrcs(_addrs, stdgo._internal.net.Net__srcaddrs._srcAddrs(_addrs));
    }

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
function _supportsIPv4map():Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L50"
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("dragonfly" : stdgo.GoString)) || __value__ == (("openbsd" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L52"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L55"
        stdgo._internal.net.Net__ipstackcaps._ipStackCaps.once.do_(stdgo._internal.net.Net__ipstackcaps._ipStackCaps._probe);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L56"
        return stdgo._internal.net.Net__ipstackcaps._ipStackCaps._ipv4MappedIPv6Enabled;
    }

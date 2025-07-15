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
function _roundDurationUp(_d:stdgo._internal.time.Time_duration.Duration, _to:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L397"
        return ((((_d + _to : stdgo._internal.time.Time_duration.Duration) - (1i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration)) / _to : stdgo._internal.time.Time_duration.Duration);
    }

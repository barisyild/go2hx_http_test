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
function _minNonzeroTime(_a:stdgo._internal.time.Time_time.Time, _b:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L164"
        if (_a.isZero()) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L165"
            return _b?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L167"
        if ((_b.isZero() || _a.before(_b?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L168"
            return _a?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L170"
        return _b?.__copy__();
    }

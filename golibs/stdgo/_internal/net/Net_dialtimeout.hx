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
function dialTimeout(_network:stdgo.GoString, _address:stdgo.GoString, _timeout:stdgo._internal.time.Time_duration.Duration):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        var _d = @:assignType ({ timeout : _timeout } : stdgo._internal.net.Net_dialer.Dialer);
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L415"
        return _d.dial(_network?.__copy__(), _address?.__copy__());
    }

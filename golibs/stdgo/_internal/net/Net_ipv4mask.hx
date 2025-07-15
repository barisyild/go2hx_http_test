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
function iPv4Mask(_a:stdgo.GoUInt8, _b:stdgo.GoUInt8, _c:stdgo.GoUInt8, _d:stdgo.GoUInt8):stdgo._internal.net.Net_ipmask.IPMask {
        var _p = @:assignType (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.net.Net_ipmask.IPMask);
        _p[(0 : stdgo.GoInt)] = _a;
        _p[(1 : stdgo.GoInt)] = _b;
        _p[(2 : stdgo.GoInt)] = _c;
        _p[(3 : stdgo.GoInt)] = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L72"
        return _p;
    }

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
function _xtoi2(_s:stdgo.GoString, _e:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L176"
        if ((((_s.length) > (2 : stdgo.GoInt) : Bool) && (_s[(2 : stdgo.GoInt)] != _e) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L177"
            return { _0 : (0 : stdgo.GoUInt8), _1 : false };
        };
        var __tmp__ = stdgo._internal.net.Net__xtoi._xtoi((_s.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _ei:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L180"
        return { _0 : (_n : stdgo.GoUInt8), _1 : (_ok && (_ei == (2 : stdgo.GoInt)) : Bool) };
    }

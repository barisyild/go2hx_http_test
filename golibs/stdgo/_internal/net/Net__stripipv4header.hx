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
function _stripIPv4Header(_n:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L61"
        if (((_b.length) < (20 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L62"
            return _n;
        };
        var _l = @:assignType (((_b[(0 : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) << (2i64 : stdgo.GoUInt64) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L65"
        if ((((20 : stdgo.GoInt) > _l : Bool) || (_l > (_b.length) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L66"
            return _n;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L68"
        if ((_b[(0 : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) != ((4 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L69"
            return _n;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L71"
        _b.__copyTo__((_b.__slice__(_l) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L72"
        return (_n - _l : stdgo.GoInt);
    }

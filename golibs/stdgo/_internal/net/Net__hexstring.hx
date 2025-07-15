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
function _hexString(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        var _s = (new stdgo.Slice<stdgo.GoUInt8>(((_b.length) * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L312"
        if (_b != null) for (_i => _tn in _b) {
            {
                final __tmp__0 = ("0123456789abcdef" : stdgo.GoString)[((_tn >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)];
                final __tmp__1 = ("0123456789abcdef" : stdgo.GoString)[((_tn & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                final __tmp__2 = _s;
                final __tmp__3 = (_i * (2 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__4 = _s;
                final __tmp__5 = ((_i * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L315"
        return (_s : stdgo.GoString)?.__copy__();
    }

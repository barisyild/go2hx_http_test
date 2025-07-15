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
function _lowerASCIIBytes(_x:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L231"
        if (_x != null) for (_i => _b in _x) {
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L232"
            if ((((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                _x[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
        };
    }

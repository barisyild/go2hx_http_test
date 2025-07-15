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
function _hasUpperCase(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L221"
        if (_s != null) for (_i => _ in _s) {
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L222"
            if ((((65 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L223"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L226"
        return false;
    }

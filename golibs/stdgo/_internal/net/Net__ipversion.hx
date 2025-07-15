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
function _ipVersion(_network:stdgo.GoString):stdgo.GoUInt8 {
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L106"
        if (_network == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L107"
            return (0 : stdgo.GoUInt8);
        };
        var _n = @:assignType (_network[((_network.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L110"
        if (((_n != (52 : stdgo.GoUInt8)) && (_n != (54 : stdgo.GoUInt8)) : Bool)) {
            _n = (0 : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L113"
        return _n;
    }

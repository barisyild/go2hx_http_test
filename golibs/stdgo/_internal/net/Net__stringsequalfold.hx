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
function _stringsEqualFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L310"
        if ((_s.length) != ((_t.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L311"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L313"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L314"
                if (stdgo._internal.net.Net__lowerascii._lowerASCII(_s[(_i : stdgo.GoInt)]) != (stdgo._internal.net.Net__lowerascii._lowerASCII(_t[(_i : stdgo.GoInt)]))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L315"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L318"
        return true;
    }

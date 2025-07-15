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
function _splitHostZone(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _host = ("" : stdgo.GoString), _zone = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L222"
        {
            var _i = @:assignType (stdgo._internal.net.Net__last._last(_s?.__copy__(), (37 : stdgo.GoUInt8)) : stdgo.GoInt);
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                    final __tmp__1 = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _host = @:binopAssign __tmp__0;
                    _zone = @:binopAssign __tmp__1;
                };
            } else {
                _host = _s?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L227"
        return { _0 : _host, _1 : _zone };
    }

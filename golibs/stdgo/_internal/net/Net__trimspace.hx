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
function _trimSpace(_x:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L248"
        while ((((_x.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.Net__isspace._isSpace(_x[(0 : stdgo.GoInt)]) : Bool)) {
            _x = (_x.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L251"
        while ((((_x.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.Net__isspace._isSpace(_x[((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _x = (_x.__slice__(0, ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L254"
        return _x?.__copy__();
    }

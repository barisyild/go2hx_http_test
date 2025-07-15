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
function _sotypeToNet(_sotype:stdgo.GoInt):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L74"
        {
            final __value__ = _sotype;
            if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L76"
                return ("unix" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L78"
                return ("unixgram" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L80"
                return ("unixpacket" : stdgo.GoString);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L82"
                throw new stdgo.AnyInterface(("sotypeToNet unknown socket type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
    }

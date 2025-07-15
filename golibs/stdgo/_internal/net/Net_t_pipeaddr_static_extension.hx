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
@:keep @:allow(stdgo._internal.net.Net.T_pipeAddr_asInterface) class T_pipeAddr_static_extension {
    @:keep
    @:tdfield
    static public function string( _:stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr):stdgo.GoString {
        @:recv var _:stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L85"
        return ("pipe" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function network( _:stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr):stdgo.GoString {
        @:recv var _:stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L84"
        return ("pipe" : stdgo.GoString);
    }
}

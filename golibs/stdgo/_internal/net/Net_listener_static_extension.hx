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
@:keep class Listener_static_extension {
    @:interfacetypeffun
    static public function addr(t:stdgo._internal.net.Net_listener.Listener):stdgo._internal.net.Net_addr.Addr return t.addr();
    @:interfacetypeffun
    static public function close(t:stdgo._internal.net.Net_listener.Listener):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function accept(t:stdgo._internal.net.Net_listener.Listener):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return t.accept();
}
